# undpcomposite: UNDP composite indices for countries and aggregates, 1990 to 2022

Composite indices from the UNDP Human Development Report 2023/2024
complete time series: the Human Development Index (HDI), the Gender
Development Index (GDI), the Inequality-adjusted HDI (IHDI), the Gender
Inequality Index (GII) and the Planetary pressures-adjusted HDI (PHDI),
with their components, for 195 countries and territories and 11 UNDP
aggregates (development groups, developing regions and the world). One
row per country or aggregate and year, from 1990 to 2022. Not every
index covers every year; missing values are NA.

## Usage

``` r
undpcomposite
```

## Format

A tibble with 6798 rows and 45 variables

- iso3:

  ISO3 country code

- country:

  Country name

- hdicode:

  Human Development Group

- region:

  UNDP developing regions

- hdi_rank_2022:

  HDI Rank in 2022

- year:

  Year of value

- hdi:

  Human Development Index

- le:

  Life Expectancy at Birth (years)

- eys:

  Expected Years of Schooling (years)

- mys:

  Mean Years of Schooling (years)

- gnipc:

  Gross National Income Per Capita (2017 PPP\$)

- gdi_group:

  GDI Group

- gdi:

  Gender Development Index (value)

- hdi_f:

  HDI female

- le_f:

  Life Expectancy at Birth, female (years)

- eys_f:

  Expected Years of Schooling, female (years)

- mys_f:

  Mean Years of Schooling, female (years)

- gni_pc_f:

  Gross National Income Per Capita, female (2017 PPP\$)

- hdi_m:

  HDI male

- le_m:

  Life Expectancy at Birth, male (years)

- eys_m:

  Expected Years of Schooling, male (years)

- mys_m:

  Mean Years of Schooling, male (years)

- gni_pc_m:

  Gross National Income Per Capita, male (2017 PPP\$)

- ihdi:

  Inequality-adjusted Human Development Index (value)

- coef_ineq:

  Coefficient of human inequality

- loss:

  Overall loss (%)

- ineq_le:

  Inequality in life expectancy

- ineq_edu:

  Inequality in education

- ineq_inc:

  Inequality in income

- gii_rank:

  GII Rank

- gii:

  Gender Inequality Index (value)

- mmr:

  Maternal Mortality Ratio (deaths per 100,000 live births)

- abr:

  Adolescent Birth Rate (births per 1,000 women ages 15-19)

- se_f:

  Population with at least some secondary education, female (% ages 25
  and older)

- se_m:

  Population with at least some secondary education, male (% ages 25 and
  older)

- pr_f:

  Share of seats in parliament, female (% held by women)

- pr_m:

  Share of seats in parliament, male (% held by men)

- lfpr_f:

  Labour force participation rate, female (% ages 15 and older)

- lfpr_m:

  Labour force participation rate, male (% ages 15 and older)

- rankdiff_hdi_phdi:

  Difference from HDI rank

- phdi:

  Planetary pressures-adjusted Human Development Index (value)

- diff_hdi_phdi:

  Difference from HDI value (%)

- co2_prod:

  Carbon dioxide emissions per capita (production) (tonnes)

- mf:

  Material footprint per capita (tonnes)

- pop_total:

  Population, total (millions)

## Source

Obtained from the UNDP Human Development Report 2023/2024, composite
indices complete time series
(<https://hdr.undp.org/data-center/documentation-and-downloads>),
published under the Creative Commons Attribution 3.0 IGO licence.

## Examples

``` r
# HDI of the world aggregate in the first and the last year
world <- undpcomposite[undpcomposite$iso3 == "ZZK.WORLD", ]
world[world$year %in% c("1990", "2022"), c("country", "year", "hdi")]
#> # A tibble: 2 × 3
#>   country year    hdi
#>   <chr>   <chr> <dbl>
#> 1 World   1990  0.601
#> 2 World   2022  0.739
```
