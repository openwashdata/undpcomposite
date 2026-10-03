# Changelog

## undpcomposite 1.0.2

- Two country names in `undpcomposite` are spelled correctly again:
  “Côte d’Ivoire” (CIV) and “Türkiye” (TUR) had lost their accented
  letters (“Cte d’Ivoire”, “Trkiye”). The raw CSV is Latin-1 encoded;
  `data-raw/data_processing.R` now reads it with that encoding instead
  of removing the characters it could not convert. The `.rda`, CSV and
  XLSX exports are rebuilt. No other values change
  ([\#1](https://github.com/openwashdata/undpcomposite/issues/1)).

## undpcomposite 1.0.1

- Metadata-only patch after the v1.0.0 Zenodo record, which was cut
  while DESCRIPTION said 0.1.0. Lars Schöbitz takes over as maintainer,
  Yash Dubey stays as author. CITATION.cff and inst/CITATION carry the
  Zenodo concept DOI and declare the work as a dataset; DESCRIPTION
  gains keywords and the spatial and temporal coverage; the dictionary
  text is valid UTF-8 and the dataset documentation names the indices,
  the years, the aggregates and the source licence; the pkgdown site is
  configured per the openwashdata standard and deployed from gh-pages; R
  CMD check runs in CI. The data are unchanged.

## undpcomposite 1.0.0

- First release on Zenodo.
