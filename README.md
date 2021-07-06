# Implementation of machine learning algorithms with examples.

**Requirements**: Docker Compose<br>
**Instalation**: To open Jupyter notebooks locally run `make up` while being in the main folder.<br><br>

<p><h1>Linear regression algorithms.<span class="tocSkip"></span></h1></p>
<div class="toc"><ul class="toc-item"><li><span><a href="https://aroundpython.com/static/linear-regression/#Linear-regression" data-toc-modified-id="Linear-regression-1"><span class="toc-item-num">1&nbsp;&nbsp;</span>Linear regression</a></span><ul class="toc-item"><li><span><a href="https://aroundpython.com/static/linear-regression/#Hypothesis" data-toc-modified-id="Hypothesis-1.1"><span class="toc-item-num">1.1&nbsp;&nbsp;</span>Hypothesis</a></span></li><li><span><a href="https://aroundpython.com/static/linear-regression/#Cost-function---Mean-squared-error" data-toc-modified-id="Cost-function---Mean-squared-error-1.2"><span class="toc-item-num">1.2&nbsp;&nbsp;</span>Cost function - Mean squared error</a></span></li><li><span><a href="https://aroundpython.com/static/linear-regression/#Gradient-descent" data-toc-modified-id="Gradient-descent-1.3"><span class="toc-item-num">1.3&nbsp;&nbsp;</span>Gradient descent</a></span></li><li><span><a href="https://aroundpython.com/static/linear-regression/#Feature-scaling-and-mean-normalization" data-toc-modified-id="Feature-scaling-and-mean-normalization-1.4"><span class="toc-item-num">1.4&nbsp;&nbsp;</span>Feature scaling and mean normalization</a></span></li><li><span><a href="https://aroundpython.com/static/linear-regression/#Normal-equation" data-toc-modified-id="Normal-equation-1.5"><span class="toc-item-num">1.5&nbsp;&nbsp;</span>Normal equation</a></span></li><li><span><a href="https://aroundpython.com/static/linear-regression/#Learning-rate-decay" data-toc-modified-id="Learning-rate-decay-1.6"><span class="toc-item-num">1.6&nbsp;&nbsp;</span>Learning rate decay</a></span></li></ul></li><li><span><a href="https://aroundpython.com/static/linear-regression/#Linear-regression-implementations" data-toc-modified-id="Linear-regression-implementations-2"><span class="toc-item-num">2&nbsp;&nbsp;</span>Linear regression implementations</a></span><ul class="toc-item"><li><span><a href="https://aroundpython.com/static/linear-regression/#Mean-squared-error-implementation" data-toc-modified-id="Mean-squared-error-implementation-2.1"><span class="toc-item-num">2.1&nbsp;&nbsp;</span>Mean squared error implementation</a></span></li><li><span><a href="https://aroundpython.com/static/linear-regression/#Gradient-descent-implementation" data-toc-modified-id="Gradient-descent-implementation-2.2"><span class="toc-item-num">2.2&nbsp;&nbsp;</span>Gradient descent implementation</a></span></li><li><span><a href="https://aroundpython.com/static/linear-regression/#Feature-normalization-implementation" data-toc-modified-id="Feature-normalization-implementation-2.3"><span class="toc-item-num">2.3&nbsp;&nbsp;</span>Feature normalization implementation</a></span></li><li><span><a href="https://aroundpython.com/static/linear-regression/#Normal-equation-implementation" data-toc-modified-id="Normal-equation-implementation-2.4"><span class="toc-item-num">2.4&nbsp;&nbsp;</span>Normal equation implementation</a></span></li><li><span><a href="https://aroundpython.com/static/linear-regression/#Gradient-descent-with-learning-rate-decay" data-toc-modified-id="Gradient-descent-with-learning-rate-decay-2.5"><span class="toc-item-num">2.5&nbsp;&nbsp;</span>Gradient descent with learning rate decay</a></span></li></ul></li><li><span><a href="https://aroundpython.com/static/linear-regression/#Linear-regression-examples" data-toc-modified-id="Linear-regression-examples-3"><span class="toc-item-num">3&nbsp;&nbsp;</span>Linear regression examples</a></span><ul class="toc-item"><li><span><a href="https://aroundpython.com/static/linear-regression/#Plot-hypothesis" data-toc-modified-id="Plot-hypothesis-3.1"><span class="toc-item-num">3.1&nbsp;&nbsp;</span>Plot hypothesis</a></span></li><li><span><a href="https://aroundpython.com/static/linear-regression/#Plot-different-hypothesis-and-mean-squared-errors" data-toc-modified-id="Plot-different-hypothesis-and-mean-squared-errors-3.2"><span class="toc-item-num">3.2&nbsp;&nbsp;</span>Plot different hypothesis and mean squared errors</a></span></li><li><span><a href="https://aroundpython.com/static/linear-regression/#Plot-mean-squared-error-for-univariable-hypothesis" data-toc-modified-id="Plot-mean-squared-error-for-univariable-hypothesis-3.3"><span class="toc-item-num">3.3&nbsp;&nbsp;</span>Plot mean squared error for univariable hypothesis</a></span></li><li><span><a href="https://aroundpython.com/static/linear-regression/#Plot-mean-squared-error-for-multivariable-hypothesis" data-toc-modified-id="Plot-mean-squared-error-for-multivariable-hypothesis-3.4"><span class="toc-item-num">3.4&nbsp;&nbsp;</span>Plot mean squared error for multivariable hypothesis</a></span></li><li><span><a href="https://aroundpython.com/static/linear-regression/#Plot-cost-function-for-univariable-hypothesis" data-toc-modified-id="Plot-cost-function-for-univariable-hypothesis-3.5"><span class="toc-item-num">3.5&nbsp;&nbsp;</span>Plot cost function for univariable hypothesis</a></span></li><li><span><a href="https://aroundpython.com/static/linear-regression/#Plot-cost-function-for-multivariable-hypothesis" data-toc-modified-id="Plot-cost-function-for-multivariable-hypothesis-3.6"><span class="toc-item-num">3.6&nbsp;&nbsp;</span>Plot cost function for multivariable hypothesis</a></span></li><li><span><a href="https://aroundpython.com/static/linear-regression/#Plot-cost-function-for-different-learning-rates-I" data-toc-modified-id="Plot-cost-function-for-different-learning-rates-I-3.7"><span class="toc-item-num">3.7&nbsp;&nbsp;</span>Plot cost function for different learning rates I</a></span></li><li><span><a href="https://aroundpython.com/static/linear-regression/#Plot-cost-function-for-differen-learning-rates-II" data-toc-modified-id="Plot-cost-function-for-differen-learning-rates-II-3.8"><span class="toc-item-num">3.8&nbsp;&nbsp;</span>Plot cost function for differen learning rates II</a></span></li><li><span><a href="https://aroundpython.com/static/linear-regression/#Plot-normalized-features" data-toc-modified-id="Plot-normalized-features-3.9"><span class="toc-item-num">3.9&nbsp;&nbsp;</span>Plot normalized features</a></span></li><li><span><a href="https://aroundpython.com/static/linear-regression/#Calculate-hypothesis-for-noralized-features" data-toc-modified-id="Calculate-hypothesis-for-noralized-features-3.10"><span class="toc-item-num">3.10&nbsp;&nbsp;</span>Calculate hypothesis for noralized features</a></span></li><li><span><a href="https://aroundpython.com/static/linear-regression/#Calculate-hypothesis-using-normal-equation" data-toc-modified-id="Calculate-hypothesis-using-normal-equation-3.11"><span class="toc-item-num">3.11&nbsp;&nbsp;</span>Calculate hypothesis using normal equation</a></span></li><li><span><a href="https://aroundpython.com/static/linear-regression/#Comparing-gradient-descent-with-and-without-learning-rate-decay" data-toc-modified-id="Comparing-gradient-descent-with-and-without-learning-rate-decay-3.12"><span class="toc-item-num">3.12&nbsp;&nbsp;</span>Comparing gradient descent with and without learning rate decay</a></span></li><li><span><a href="https://aroundpython.com/static/linear-regression/#Plot-hypothesis-using-different-functions" data-toc-modified-id="Plot-hypothesis-using-different-functions-3.13"><span class="toc-item-num">3.13&nbsp;&nbsp;</span>Plot hypothesis using different functions</a></span></li></ul></li></ul></div>
