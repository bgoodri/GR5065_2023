library(dplyr)
FRED <- "https://fred.stlouisfed.org/graph/fredgraph.csv?id="
SERIES <- c(GDI = "A261RL1Q225SBEA",
            GDP = "A191RL1Q225SBEA",
            UR  = "LRUN64TTUSQ156S")
data <- readr::read_csv(paste0(FRED, paste(SERIES, collapse = ",")),
                        progress = FALSE, show_col_types = FALSE,
                        na = ".") %>%
  rename(quarter_startdate = DATE,
         GDI = A261RL1Q225SBEA,
         GDP = A191RL1Q225SBEA,
         UR  = LRUN64TTUSQ156S) %>%
  # only the next three lines differ from HW2
  mutate(GDO = (GDI + GDP) / 2,
         x = c(NA_real_, diff(UR))) %>%
  na.omit
