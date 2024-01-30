---
layout: post
title: "Benders分解:Gurobi实践"
categories: tech
tags: [integer programming]
---



记录一下Gurobi中利用Callback函数实现Benders分解的注意事项

## 注意事项

```python
model.Params.lazyConstraints = 1
```

自己定义的变量前面加_

```Python
model._vars = model.getVars()
```

调用方法

```python
model.optimize(mycallback)
```
