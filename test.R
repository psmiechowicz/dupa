getwd()
setwd(r"(D:\Kariera\portfolio_github\currency\)")
packrat::init()
packrat::on()
packrat::snapshot()
packrat::off()
packrat::status()


remove.packages("glue")
packrat::status()
packrat::restore()
packrat::status()

install.packages("https://cran.r-project.org/src/contrib/Archive/glue/glue_1.3.0.tar.gz",
                 repos=NULL, type="source")



copula <- tryCatch(
  expr = {copula::normalCopula(param = 1.0)},
  error = function(cond) return(cond)
)
typeof(copula)
class(copula)
copula
