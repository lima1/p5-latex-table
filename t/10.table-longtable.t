use Test::More tests => 2;
use Test::NoWarnings;

use LaTeX::Table;

my $test_header =  [ ['Name','Beers:2c'], ['','before 4pm', 'after 4pm'] ];
my $test_data   =  [ 
						['Lisa','0','0'], 
						[ 'Marge','0','1'], 
						[ 'Wiggum','0','5'],
						[ 'Otto','1','3'],
						[ 'Homer','2','6'],
						[ 'Barney','8','16'],
				];

my $table = LaTeX::Table->new({ filename => 'out.tex',
							    label    => 'beercounter',
								maincaption => 'Beer Counter',
								caption   => 'Number of beers before and after 4pm.',
                                header    => $test_header,
                                data      => $test_data,
                                type      => 'longtable',
                             });

my $expected_output =<<'EOT'
{
\begin{longtable}[c]{lrr}
\toprule
Name & \multicolumn{2}{c}{Beers} \\
     & before 4pm                & after 4pm \\
\midrule
\endfirsthead

\toprule
Name & \multicolumn{2}{c}{Beers} \\
     & before 4pm                & after 4pm \\
\midrule
\endhead
\midrule
\multicolumn{3}{r}{{Continued on next page}} \\
\bottomrule
\endfoot

\caption[Beer Counter]{Beer Counter. Number of beers before and after 4pm.\label{beercounter}}\\
\endlastfoot
Lisa   & 0 & 0  \\
Marge  & 0 & 1  \\
Wiggum & 0 & 5  \\
Otto   & 1 & 3  \\
Homer  & 2 & 6  \\
Barney & 8 & 16 \\
\bottomrule
\end{longtable}
}
EOT
;

my $output = $table->generate_string();
is_deeply([ split("\n",$output) ], [split("\n",$expected_output)], 'without
    table environment') || diag $output;
