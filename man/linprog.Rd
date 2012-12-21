\name{linprog}
\alias{linprog}
\title{Linear Programming}
\description{This function solves a standard Linear Programming problem:
  minimize in x: f'*x
  subject to: A*x <= b 
  subject to: Aeq*x == beq
  x >= lb
  x <= ub
}

\usage{
  linprog(f, A = NULL, b = NULL, Aeq = NULL, beq = NULL, lb = NULL, ub = NULL, x0 = NULL, options = NULL, solver = "Rglpk")
}

\arguments{
  \item{f}{Objective function}
  \item{A}{Inequality constraints (left-hand side)}
  \item{b}{Inequality constraints (right-hand side)}
  \item{Aeq}{Equality constraints (left-hand side)}
  \item{beq}{Equality constraints (right-hand side)}
  \item{lb}{Lower bound}
  \item{ub}{Upper bound}
  \item{x0}{Initial solution}
  \item{options}{Additional optimization parameters}
  \item{solver}{Solver}
}

\value{
  \item{x}{Solution vector}
}

\references{http://www.modopt.com/}

\author{Ronald Hochreiter <ron@hochreiter.net>}

\examples{
cov = c(1,1,1)
mean = c(1,1,1)
solution = linprog()
cat(solution$x)
}

\keyword{Optimization}
\keyword{Linear Programming}