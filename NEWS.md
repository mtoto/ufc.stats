# ufc.stats 0.0.1 (2021-01-24)

- Passes have been removed from the dataset, as on the official UFC stats site it has been replaced by ground control time. Might add this new metric at a future point, for now neither is in the most recent dataset.

# ufc.stats 0.0.2 (2021-02-28)

- The `refresh_data()` has been fixed and now uses public S3 link to update the `ufc_stats` dataset within the package.

