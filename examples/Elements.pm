# This example shows how to access DOM elements.
# Refer also to the Minilla and Signals examples.
#
# $CVSHeader$


package Elements;

use strict;
use warnings;

use Glib qw(TRUE FALSE);
use Gtk2;
use Gtk2::MozEmbed;
use Mozilla::DOM '0.07';   # for Element and Node methods

use Glib::Object::Subclass Gtk2::Window::;

sub INIT_INSTANCE {
    my $self = shift;

    my $embed = Gtk2::MozEmbed->new();

    # The net_stop signal fires when a page stops loading,
    # so we connect our DOM-manipulating code to that.
    $embed->signal_connect(net_stop => \&net_stop_cb);

    $self->add($embed);
    $embed->load_url('about:blank');
    $self->{_embed} = $embed;
}


sub net_stop_cb {
    my $embed = shift;

    # Mozilla::DOM::WebBrowser
    my $browser = $embed->get_nsIWebBrowser;

    # Mozilla::DOM::Window (window object in JavaScript)
    my $window = $browser->GetContentDOMWindow;

    # Mozilla::DOM::Document (document object in JavaScript)
    # This is the Document in "Document Object Model".
    # Using this you can create all Elements/Nodes.
    my $doc = $window->GetDocument;

    # Mozilla::DOM::Element (<HTML> element)
    my $docelem = $doc->GetDocumentElement;

    print "DocumentElement:\n";
    print "\ttag=", $docelem->GetTagName, $/;

    if ($docelem->HasChildNodes) {
        # Mozilla::DOM::NodeList
        my $bodylist = $docelem->GetElementsByTagName('body');
        if ($bodylist->GetLength) {
            my $body = $bodylist->Item(0);

            # Change body bgcolor attribute (tedious...)
            my $attrnodemap = $body->GetAttributes;
            my $newattr = $doc->CreateAttribute('bgcolor');
            $newattr->SetValue('#dd22dd');
            # (no idea why this is called "named")
            $attrnodemap->SetNamedItem($newattr);

            # Insert some text after all of <body>'s children
            # (though in this case there are no children).
            my $text = $doc->CreateTextNode("Hello, world!");
            $body->InsertBefore($text);
        }

        # Mozilla::DOM::NodeList
        my $kids = $docelem->GetChildNodes;
        my $numkids = $kids->GetLength;
        print "\tnum children=$numkids\n";

        foreach my $i (0 .. $numkids - 1) {
            # Mozilla::DOM::Node
            my $kid = $kids->Item($i);
            print "\tchild $i: ", $kid->GetNodeName, $/;

            if ($kid->HasAttributes) {
                # Mozilla::NamedNodeMap
                my $attrs = $kid->GetAttributes;

                my $numattrs = $attrs->GetLength;
                foreach my $j (0 .. $numattrs - 1) {
                    # Mozilla::DOM::Node
                    my $attr = $attrs->Item($j);
                    my $name = $attr->GetNodeName;
                    my $val = $attr->GetNodeValue;
                    print "\t\tattr $j: $name=$val\n";
                }
            }
        }
    }

}

1;
