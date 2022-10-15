Sandra Nguemto

# Project: Stock Index Forecasting Model Implementation.

The goal of this project is to test a model of stock index forecasting,
in R.

It is a model based on High order fuzzy fluctuation trends and back
propagation Neural Networks. As a brief explanation, it is a stock index
forecasting model that uses Artificial Neural Networks and fuzzy set
theory, to predict stock indices, and has several advantages over
traditional models.

In the paper where this model is presented it is tested on the TAIEX for
the year 1999 for example. We will work on testing the model on the US
stock market. Stock price data is available online from sources like
yahoo finance, and bloomberg. For this project, we will get the data
from Yahoo Finance

Here is a link to the paper where the model is presented, and that we
will be using as the primary source for our work: (**See paper for a
torough explanation of the model**) [Base
Paper](https://journals.plos.org/plosone/article/file?id=10.1371/journal.pone.0192366&type=printable)

It is also available in this repository : [Base Paper Repo](https://github.com/sandra-nguemto/stock-index-forecasting/blob/main/Doc/base_paper.pdf)

The report containing details about the implementation of the model is
here:
[Report](https://github.com/sandra-nguemto/stock-index-forecasting/blob/main/Doc/Report.pdf)

The slides for the in class presentation of the project are here:
[Slides](https://github.com/sandra-nguemto/stock-index-forecasting/blob/main/Stock%20Index%20Simulation%20using%20a%20Back%20Propagation%20Neural%20Network%20Algorithm..pdf)

To implement the model we created a package called `FMpackage`. It
contains 4 functions, namely:

  - `data_fuzzification()` : it takes in a data frame of the form of the
    data loaded in the first chunk of code of the report and returns a
    data frame with the fuzzified data. This function takes care of the
    first step of the model.

  - `data_fflr()`: it takes in a data frame with fuzzified data points
    and returns the Fuzzy Fluctuation Logical Relationships. This
    function takes care of the second step of the model.

  - `integer_conversion()`: it changes all but the last column of a data
    frame to the data type `integer`. This is to preserve the points in
    the FFLRs as integers before feeding them into the Neural Network
    algorithm.

  - `error_analysis()` : it computes the Mean Squared Error, the Root of
    the Mean Squared Error, the Mean Absolute Error and the Mean
    Percentage Error for the result of the forecast.
