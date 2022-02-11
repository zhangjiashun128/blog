mpg
nrow(mpg)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = hwy, y = cyl))
ggplot(data = mpg) +
  geom_point(mapping = aes(x = class, y = drv))
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, size = class))
## A tibble: 3 x 3
#   country         `1999`     `2000`
#   <chr>            <dbl>      <dbl>
# 1 Afghanistan   19987071   20595360
# 2 Brazil       172006362  174504898
# 3 China       1272915272 1280428583

# # A tibble: 12 x 4
#   country      year type            count
#   <chr>       <dbl> <chr>           <dbl>
# 1 Afghanistan  1999 cases             745
# 2 Afghanistan  1999 population   19987071
# 3 Afghanistan  2000 cases            2666
# 4 Afghanistan  2000 population   20595360
# 5 Brazil       1999 cases           37737
# 6 Brazil       1999 population  172006362
# 7 Brazil       2000 cases           80488
# 8 Brazil       2000 population  174504898
# 9 China        1999 cases          212258
# 10 China        1999 population 1272915272
# 11 China        2000 cases          213766
# 12 China        2000 population 1280428583

nycflights13::flights %>%
       print(n = 4)
# # A tibble: 336,776 x 19
# year month   day dep_time sched_dep_time
# <int> <int> <int>    <int>          <int>
#   1  2013     1     1      517            515
# 2  2013     1     1      533            529
# 3  2013     1     1      542            540
# 4  2013     1     1      544            545
# # ... with 336,772 more rows, and 14 more
# #   variables: dep_delay <dbl>,
# #   arr_time <int>, sched_arr_time <int>,
# #   arr_delay <dbl>, carrier <chr>,
# #   flight <int>, tailnum <chr>,
# #   origin <chr>, dest <chr>, air_time <dbl>,
# #   distance <dbl>, hour <dbl>, ...

# # A tibble: 7 x 3
#    year   qtr return
#   <dbl> <dbl>  <dbl>
# 1  2015     1   1.88
# 2  2015     2   0.59
# 3  2015     3   0.35
# 4  2015     4   NA
# 5  2016     2   0.92
# 6  2016     3   0.17
# 7  2016     4   2.66

treatment <- tribble(
  ~ person,           ~ treatment, ~response,
  "Derrick Whitmore", 1,           7,
  NA,                 2,           10,
  NA,                 3,           9,
  "Katherine Burke",  1,           4
)

treatment
# # A tibble: 4 x 3
#   person           treatment response
#   <chr>                <dbl>    <dbl>
# 1 Derrick Whitmore         1        7
# 2 NA                       2       10
# 3 NA                       3        9
# 4 Katherine Burke          1        4

treatment %>%
  fill(person)

# # A tibble: 4 x 3
#   person           treatment response
#   <chr>                <dbl>    <dbl>
# 1 Derrick Whitmore         1        7
# 2 Derrick Whitmore         2       10
# 3 Derrick Whitmore         3        9
# 4 Katherine Burke          1        4

flights %>%
  arrange(year, month, day, sched_dep_time, carrier, flight) %>%
  mutate(flight_id = row_number()) %>%
  glimpse()

# Rows: 336,776
# Columns: 20
# $ year           <int> 2013, 2013, 2013, 2013, 2013, 2013, 2013, 2013~
# $ month          <int> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1~
# $ day            <int> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1~
# $ dep_time       <int> 517, 533, 542, 544, 554, 559, 558, 559, 558, 5~
# $ sched_dep_time <int> 515, 529, 540, 545, 558, 559, 600, 600, 600, 6~
# $ dep_delay      <dbl> 2, 4, 2, -1, -4, 0, -2, -1, -2, -2, -3, NA, 1,~
# $ arr_time       <int> 830, 850, 923, 1004, 740, 702, 753, 941, 849, ~
# $ sched_arr_time <int> 819, 830, 850, 1022, 728, 706, 745, 910, 851, ~
# $ arr_delay      <dbl> 11, 20, 33, -18, 12, -4, 8, 31, -2, -3, -8, NA~
# $ carrier        <chr> "UA", "UA", "AA", "B6", "UA", "B6", "AA", "AA"~
# $ flight         <int> 1545, 1714, 1141, 725, 1696, 1806, 301, 707, 4~
# $ tailnum        <chr> "N14228", "N24211", "N619AA", "N804JB", "N3946~
# $ origin         <chr> "EWR", "LGA", "JFK", "JFK", "EWR", "JFK", "LGA~
# $ dest           <chr> "IAH", "IAH", "MIA", "BQN", "ORD", "BOS", "ORD~
# $ air_time       <dbl> 227, 227, 160, 183, 150, 44, 138, 257, 149, 15~
# $ distance       <dbl> 1400, 1416, 1089, 1576, 719, 187, 733, 1389, 1~
# $ hour           <dbl> 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6~
# $ minute         <dbl> 15, 29, 40, 45, 58, 59, 0, 0, 0, 0, 0, 0, 0, 0~
# $ time_hour      <dttm> 2013-01-01 05:00:00, 2013-01-01 05:00:00, 201~
# $ flight_id      <int> 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14,~

stringi::stri_locale_info()
# $Language
# [1] "zh"
#
# $Country
# [1] "CN"
#
# $Variant
# [1] ""
#
# $Name
# [1] "zh_CN"

str_split(sentences, boundary("word")) %>%
  unlist() %>%
  str_to_lower() %>%
  tibble() %>%
  set_names("word") %>%
  group_by(word) %>%
  count(sort = TRUE) %>%
  head(5)

apropos("replace")
#> [1] "%+replace%"       "replace"          "replace_na"       "setReplaceMethod"
#> [5] "str_replace"      "str_replace_all"  "str_replace_na"   "theme_replace"
#>

glob2rx("*.Rmd")
# [1] "^.*\\.Rmd$"

today()
# [1] "2022-01-23"

now()
#[1] "2022-01-23 21:23:56 CST"

as_datetime(today())
# [1] "2022-01-23 UTC"

as_date(now())
# [1] "2022-01-23"

datetime <- now()

year(datetime)
# [1] 2022

mday(datetime)
# [1] 24

yday(datetime)
# [1] 24

wday(datetime)
# [1] 2

month(datetime, label = TRUE)
# [1] 1月
# 12 Levels: 1月 < 2月 < 3月 < 4月 < 5月 < ... < 12月

wday(datetime, label = TRUE, abbr = FALSE)
# [1] 星期一
# 7 Levels: 星期日 < 星期一 < 星期二 < ... < 星期六

datetime1 <- now()
# [1] "2022-01-24 19:48:34 CST"

year(datetime1) <- 2021
datetime1
# [1] "2021-01-24 19:48:34 CST"

month(datetime1) <- 12
datetime1
# [1] "2021-12-24 19:48:34 CST"

hour(datetime1) <- hour(datetime1) + 1
datetime1
# [1] "2021-12-24 20:48:34 CST"

update(datetime1, year = 2020, month = 2, mday = 2, hour = 2)

length(OlsonNames())
# [1] 594

head(OlsonNames())
# [1] "Africa/Abidjan"     "Africa/Accra"
# [3] "Africa/Addis_Ababa" "Africa/Algiers"
# [5] "Africa/Asmara"      "Africa/Asmera"


assign("x", 10)
x
#> [1] 10

"x" %>% assign(100)
x
#> [1] 10
models1
# # A tibble: 250 x 3
# a1      a2  dist
# <dbl>   <dbl> <dbl>
#   1 -19.2  -0.0679 35.7
# 2  20.9   1.97   16.4
# 3  35.3  -4.57   19.9
# 4 -10.9  -1.07   33.6
# 5   8.97 -2.12   21.9
# 6  21.2   4.01   28.4
# 7  33.1   2.76   32.9
# 8  32.2  -3.77   17.3
# 9  -1.61  4.83   12.5
# 10  -8.72  4.36    6.97
# # ... with 240 more rows

by_country
# # A tibble: 142 x 3
# # Groups:   country, continent [142]
# country     continent data
# <fct>       <fct>     <list>
#   1 Afghanistan Asia      <tibble [12 x 4]>
#   2 Albania     Europe    <tibble [12 x 4]>
#   3 Algeria     Africa    <tibble [12 x 4]>
#   4 Angola      Africa    <tibble [12 x 4]>
#   5 Argentina   Americas  <tibble [12 x 4]>
#   6 Australia   Oceania   <tibble [12 x 4]>
#   7 Austria     Europe    <tibble [12 x 4]>
#   8 Bahrain     Asia      <tibble [12 x 4]>
#   9 Bangladesh  Asia      <tibble [12 x 4]>
#   10 Belgium     Europe    <tibble [12 x 4]>
#   # ... with 132 more rows
