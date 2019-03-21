# -*- perl -*-

# usage perl -i.bak -w $0 {filename}.
# example perl -i.bak -w replace_unicode_with_ascii.pl notes.txt

while(<>)
{
    s/\o{342}\o{200}\o{041}/-/g;
    s/\o{342}\o{200}\o{174}/-/g;
    s/\o{342}\o{200}\o{220}/-/g;
    s/\o{342}\o{200}\o{223}/-/g;

    s/\o{342}\o{206}\o{222}/->/g;

    s/\o{324}/'/g;
    s/\o{325}/'/g;
    s/\o{342}\o{200}\o{176}/'/g;
    s/\o{342}\o{200}\o{177}/'/g;

    s/\o{320}/--/g;
    s/\o{342}\o{200}\o{042}/--/g;
    s/\o{303}\o{220}/--/g;
    s/\o{342}\o{200}\o{224}/--/g;
    s/\o{342}\o{200}\o{225}/--/g;

    s/\o{342}\o{200}\o{230}/'/g;
    s/\o{342}\o{200}\o{231}/'/g;
    s/\o{342}\o{200}\o{233}/'/g;

    s/\o{342}\o{200}\o{232}/,/g;

    s/\o{322}/"/g;
    s/\o{323}/"/g;
    s/\o{342}\o{200}\o{234}/"/g;
    s/\o{342}\o{200}\o{235}/"/g;
    s/\o{342}\o{200}\o{263}/"/g;

    s/\o{342}\o{200}\o{246}/.../g;

    s/\o{342}\o{200}\o{250}/ /g;
    print;
}
