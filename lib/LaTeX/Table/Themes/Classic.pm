package LaTeX::Table::Themes::Classic;
use Moose;

with 'LaTeX::Table::Themes::ThemeI';

use version; our $VERSION = qv('1.0.5');

sub _definition {
    my $themes = {
        'Dresden' => {
            'HEADER_FONT_STYLE'  => 'bf',
            'HEADER_CENTERED'    => 1,
            'CAPTION_FONT_STYLE' => 'bf',
            'VERTICAL_RULES'     => [ 1, 2, 1 ],
            'HORIZONTAL_RULES'   => [ 1, 2, 0 ],
            'BOOKTABS'           => 0,
        },
        'Houston' => {
            'HEADER_FONT_STYLE'  => 'bf',
            'HEADER_CENTERED'    => 1,
            'CAPTION_FONT_STYLE' => 'bf',
            'VERTICAL_RULES'     => [ 1, 2, 1 ],
            'HORIZONTAL_RULES'   => [ 1, 2, 1 ],
            'EXTRA_ROW_HEIGHT'   => '1pt',
            'BOOKTABS'           => 0,
        },
        'Berlin' => {
            'HEADER_FONT_STYLE'  => 'bf',
            'HEADER_CENTERED'    => 1,
            'CAPTION_FONT_STYLE' => 'bf',
            'VERTICAL_RULES'     => [ 1, 1, 1 ],
            'HORIZONTAL_RULES'   => [ 1, 2, 0 ],
            'BOOKTABS'           => 0,
        },
        'Miami' => {
            'HEADER_FONT_STYLE'  => 'bf',
            'HEADER_CENTERED'    => 1,
            'CAPTION_FONT_STYLE' => 'bf',
            'STUB_ALIGN'         => 'l',
            'VERTICAL_RULES'     => [ 0, 0, 0 ],
            'HORIZONTAL_RULES'   => [ 0, 1, 0 ],
            'BOOKTABS'           => 0,
        },
        'plain' => {
            'STUB_ALIGN'       => 'l',
            'VERTICAL_RULES'   => [ 0, 0, 0 ],
            'HORIZONTAL_RULES' => [ 0, 0, 0 ],
            'BOOKTABS'         => 0,
        },
    };
    return $themes;
}

1;
__END__

=head1 NAME

LaTeX::Table::Themes::Classic - Classic LaTeX table themes.

=head1 PROVIDES

This module provides following themes:

  Berlin
  Dresden
  Houston
  Miami
  plain

=head1 REQUIRES

The themes defined in this module require no additional LaTeX packages.

=head1 SEE ALSO

L<LaTeX::Table>, L<LaTeX::Table::Themes::ThemeI>

=head1 LICENSE AND COPYRIGHT

Copyright (c) 2006-2010 C<< <limaone@cpan.org> >> 

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself. See L<perlartistic>.

=cut

# vim: ft=perl sw=4 ts=4 expandtab
