summary_table <- df %>%
  group_by(COUNTY_NAME) %>%
  summarize(
    Total_Vaccinated = sum(PERSONCVAX, na.rm = TRUE),
    Percent_Vaccinated = mean(PCTCUMPCVAX, na.rm = TRUE)
  ) %>%
  arrange(desc(Percent_Vaccinated))

kable(summary_table, caption = "Summary of Vaccination Rates by County")