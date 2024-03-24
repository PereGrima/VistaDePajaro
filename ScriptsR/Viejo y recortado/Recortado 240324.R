
### Más sobre $R^2$ y su relación con el coeficiente de correlación $r$ {.unnumbered}

De una manera más formal podemos escribir la expresión del coeficiente de determinación $R^2$ de la forma:
  
  $$R^2 = \frac{\sum_{i=1}^{n}( \hat{y_i} - \bar{y} ) ^2}{\sum_{i=1}^{n}( y_i - \bar{y})^2} $$
    donde $\hat{y}_i$ es el valor estimado de $Y$ cuando la variable explicativa toma un valor igual a $x_i$. El denominador es igual a la suma de los cuadrados de los residuos si no se aprovecha la información aportada por la variable explicativa $X$, es decir, cuando la recta ajustada es una horizonatal que pasa por $\bar{y}$.
  
  Esta suma de cuadrados se puede dividir en dos partes: 
    
    $$\sum_{i=1}^{n}( y_i - \bar{y})^2 = \sum_{i=1}^{n}( \hat{y_i} - \bar{y} )^2 + \sum_{i=1}^{n}( y_i - \hat{y_i})^2 $$
    En la parte (1) $\hat{y}_i$ es el valor estimado de $Y$ cuando la variable explicativa toma un valor igual a $x_i$ y es igual a la suma de cuadrados explicada por la regresión El denominador se denomina "Suma de cuadrados total" y es igual a la suma de los cuadrados de los residuos que se tienen si la recta ajustada es una horizonatal que pasa por $\bar{y}$, es decir, si no se aprovecha la información aportada por la variable explicativa $X$.
  
  mientras que en el niumerador tenemos la llamada "Suma de cuadrados explicada por la regresión". 
  
  ![Múltiples opciones para minimizar la suma de los residuos en valor absoluto.](ScriptsR/R2_02.png){#fig-R2_02 fig-align="center" width="60%"}
    
    Otra forma de verlo, que además sirve para probar que $r$ no puede estar fuera de ese intervalo, es usando la expresión del coeficiente de determinación $R^2$:{$R^2$} $$R^2 = \frac{\sum_{i=1}^{n}( \hat{y_i} - \bar{y} ) ^2}{\sum_{i=1}^{n}( y_i - \bar{y})^2} $$
      
      Este coeficiente solo puede variar entre 0 y 1. Es igual a 0 cuando los valores estimados $\hat{y_i}$ siguen una recta horizontal, es decir, cuando la predicción de $y$ no depende del valor de $x$, y es igual a 1 cuando la explicación es perfecta: todos los valores previstos $\hat{y_i}$ coinciden con sus correspondientes valores reales $y_i$. En el numerador tenemos:
      
      ```{=tex}
    \begin{equation*}
    \begin{split}
    \sum_{i=1}^{n}( \hat{y_i} - \bar{y} ) ^2 &=   \sum_{i=1}^{n}( b_0 + b_1 x_i - \bar{y} ) ^2 =  \sum_{i=1}^{n}( \bar{y} - b_1 \bar{x}+ b_1 x_i - \bar{y} ) ^2 n\\ 
    &=  b_1^2  \sum_{i=1}^n \left ( x_i -  \bar{x} \right )^2  \\
    \end{split}
    \end{equation*}
    ```
    Sustituyendo el numerador de $R^2$ por esta nueva expresión:
      
      ```{=tex}
    \begin{equation*}
    \begin{split}
    R^2 &= b_1^2  \cdot \frac{\sum( x_i - \bar{x} ) ^2}{\sum( y_i - \bar{y})^2} =
      \frac{\left[ \sum(x_i-\bar{x})(y_i-\bar{y}) \right]^2}{\left [\sum (x_i- \bar{x})^2 \right]^2} \cdot  \frac{\sum ( x_i - \bar{x} ) ^2}{\sum ( y_i - \bar{y})^2} =\\[10pt]
    &= \left[ \frac{\sum(x_i-\bar{x})(y_i-\bar{y})} {\sqrt{\sum (x_i - \bar{x})^2} \sqrt{\sum (y_i - \bar{y})^2}} \right] ^2 = r^2\\
    \end{split}
    \end{equation*}
    ```