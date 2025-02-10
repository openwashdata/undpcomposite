#' undpcomposite: Composite data from UNDP
#'
#' Composite Data from UNDP on all indices in the form of a timeseries.
#'
#' @format A tibble with 6798 rows and 45 variables
#' \describe{
#'   \item{iso3}{ISO3 country code}
#'   \item{country}{Country name}
#'   \item{hdicode}{Human Development Group}
#'   \item{region}{UNDP Developin Regions}
#'   \item{hdi_rank_2022}{HDI Rank in 2022}
#'   \item{year}{Year of value}
#'   \item{hdi}{Human Development Index}
#'   \item{le}{Life Expectancy at Birth (years)}
#'   \item{eys}{Expected Years of Schooling (years)}
#'   \item{mys}{Mean Years of Schooling (years)}
#'   \item{gnipc}{Gross National Income Per Capita (2017 PPP$)}
#'   \item{gdi_group}{GDI Group}
#'   \item{gdi}{Gender Development Index (value)}
#'   \item{hdi_f}{HDI female}
#'   \item{le_f}{Life Expectancy at Birth, female (years)}
#'   \item{eys_f}{Expected Years of Schooling, female (years)}
#'   \item{mys_f}{Mean Years of Schooling, female (years)}
#'   \item{gni_pc_f}{Gross National Income Per Capita, female (2017 PPP$)}
#'   \item{hdi_m}{HDI male}
#'   \item{le_m}{Life Expectancy at Birth, male (years)}
#'   \item{eys_m}{Expected Years of Schooling, male (years)}
#'   \item{mys_m}{Mean Years of Schooling, male (years)}
#'   \item{gni_pc_m}{Gross National Income Per Capita, male (2017 PPP$)}
#'   \item{ihdi}{Inequality-adjusted Human Development Index (value)}
#'   \item{coef_ineq}{Coefficient of human inequality}
#'   \item{loss}{Overall loss (%)}
#'   \item{ineq_le}{Inequality in life expectancy}
#'   \item{ineq_edu}{Inequality in eduation}
#'   \item{ineq_inc}{Inequality in income}
#'   \item{gii_rank}{GII Rank}
#'   \item{gii}{Gender Inequality Index (value)}
#'   \item{mmr}{Maternal Mortality Ratio (deaths per 100,000 live births)}
#'   \item{abr}{Adolescent Birth Rate (births per 1,000 women ages 15-19)}
#'   \item{se_f}{Population with at least some secondary education, female (% ages 25 and older)}
#'   \item{se_m}{Population with at least some secondary education, male (% ages 25 and older)}
#'   \item{pr_f}{Share of seats in parliament, female (% held by women)}
#'   \item{pr_m}{Share of seats in parliament, male (% held by men)}
#'   \item{lfpr_f}{Labour force participation rate, female (% ages 15 and older)}
#'   \item{lfpr_m}{Labour force participation rate, male (% ages 15 and older)}
#'   \item{rankdiff_hdi_phdi}{Difference from HDI rank}
#'   \item{phdi}{Planetary pressures?adjusted Human Development Index (value)}
#'   \item{diff_hdi_phdi}{Difference from HDI value (%)}
#'   \item{co2_prod}{Carbon dioxide emissions per capita (production) (tonnes)}
#'   \item{mf}{Material footprint per capita (tonnes)}
#'   \item{pop_total}{Population, total (millions)}
#' }
"undpcomposite"
