mpg
nrow(mpg)
?mpg
ggplot(data = mpg) +
  geom_point(mapping = aes(x = hwy, y = cyl))
ggplot(data = mpg) +
  geom_point(mapping = aes(x = class, y = drv))
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, size = class))
