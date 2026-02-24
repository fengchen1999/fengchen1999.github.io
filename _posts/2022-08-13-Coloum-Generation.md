---
layout: post
title: "Column generation"
categories: tech
tags: [integer programming]
---



最近在读 Guy Desaulniers 的《Column generation》，想写一个读书笔记，希望不是心血来潮，可以涓涓细流。

## 列生产初探

对于一个最简单的线性规划问题：
$$
\begin{equation}
222
\end{equation}
$$

$$
333
$$

$$
\begin{equation}
	\begin{aligned}
		z_{MP}^*:= \min \sum_{j \in J} c_j\lambda_j \\
	\end{aligned}
	\label{eq:1}
\end{equation}
$$

$$
\text{s.t. } \sum_{j \in J} a_j\lambda_j \geq b
\label{eq:2}
$$

$$
\label{eq:3}
\lambda_j \geq 0, ~~ j \in J
$$

其拉格朗日形式：
$$
\begin{align}
L: & =\sum_{j \in J} c_j\lambda_j - \pi \left( \sum_{j \in J} a_j\lambda_j - b \right) - \sum_{j \in J} \alpha_j \lambda_j \\
& = \sum_{j \in J} (c_j - \pi a_j) \lambda_j + \pi b - \sum_{j \in J} \alpha_j \lambda_j
\end{align}
$$
我们可以定义 $\overline{c}_j = c_j - \pi a_j$ ，来描述 $\lambda_j$ 对于问题的投资收益。有两种理解：1）$\overline{c}_j$ 越小，$\lambda_j$ 投资收益越高，即在最优解的情况下，每增加投资1个单位 $\lambda_j$ ，目标函数增加 $c_j-\pi a_j$ ，其中 $\pi a_j$ 表示边际成本（或影子价格）。变量的影子价格是指该变量每增加1个单位所导致的目标函数的变化值（符号视系数而定）。2）$c_j$ 越小，目标函数越小；$\pi a_j$ 越大，越容易满足约束 $\eqref{eq:2}$ ，则 $\lambda_j$ 对于该问题是一个好的投资。

当 $|J|$ 很大时，计算成本过高，此时考虑列生产方法。令子集 $J^{'} \subseteq J$ ，此时称 $MP$ 为限制性主问题（$RMP$），对其求解得到 $\rm{\lambda}$ 和 $\rm{\pi}$ ，并且获得 $MP$ 的一个上界 $\overline{z}$ 。定义 $a_j,~~j \in J$ 构成集合 $\mathcal{A}$，求解子问题：
$$
\label{eq:4}
\overline{c}^*:= \min \{ c_j - \pi a_j ~~ | ~~ a_j \in \mathcal{A} \}
$$
如果 $\overline{c}^* \geq 0$ ，则 $RMP$ 的解即为 $MP$ 的解，求解完成。否则，将 $\overline{c}^*$ 所代表 $j$ 加入 $J^{'}$，即 $J^{'} = j \bigcup J^{'}$ ，进行下一轮的求解。这是一种启发式手段，即将投资收益最高的入基变量加入 $RMP$ 中。我们可以通过人工给定，启发式，预求解（"热启动"）的方式对问题进行初始化，即确定 $J^{'}$。

对于有限集合 $\mathcal{A}$ ，问题一定是收敛的，但是如何知道迭代过程中的解的质量（即收敛情况）呢。我们可以人工给定一个条件 $\kappa \geq \sum_{j \in J} \lambda_j$ ，则有：
$$
\overline{z} + \kappa \overline{c}^* \leq z_{MP}^* \leq \overline{z}
$$
这相当于在此时将所有投资押宝在了 $\lambda_j$ 上，实际上将资源不断注入 $\lambda_j$ 的过程中，影子价格 $\pi$ 会时时变化，即原来投资收益最高的 $j$ 可能会变化，或者条件 $\eqref{eq:2}$会遭到破坏，所以 $\overline{z} + \kappa \overline{c}^*$ 只是给出了 $MP$ 的下限。



### 总结

列生成的主要思想是：**通过去掉一些难的约束，求解一个相对容易的限制性主问题（$RMP$），得到主问题（$MP$）的下界（因为扩大了可行域）。再通过构造某种形式的子问题，把一些重要（紧）的约束加回到 $RMP$ 中，提高下界。不断迭代，直至收敛。**

注1：在该例子中，选取 $J^{'} \subseteq J$ ，等价于把一些变量设成了0，实际上是缩小了可行域，所以得到的是上界。迭代过程中慢慢地扩张可行域，压低上界，思想是一致的。

注2：列生产一般会有一个上下界不断逼近收敛的过程，实际上上界（该例是下界）并不是必须的，只是为了把握迭代过程中解的质量，对于某些难求解的问题可以提前终止求解，得知求解的Gap。
