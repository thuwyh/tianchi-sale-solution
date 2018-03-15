# 印象盐城·数创未来大数据竞赛 - 乘用车零售量预测

比赛链接：https://tianchi.aliyun.com/competition/introduction.htm?spm=5176.100066.0.0.3e00d780NEM7WH&raceId=231640

参赛id：wuyh

初赛1/2500，复赛17/2500

## 说明
- 初赛b榜的时候模型预测17年12月总和六百多万辆，而16年12月总和已经超过900万量，所以乘了个系数将总量调整到900万辆，没想到拿了第一。复赛的时候模型预测值总和550万辆，根据历史数据推测应该在四百万辆左右，但这次我没有手工修正，赛后交流第一名的总和应该在360-380万量之间。
- 复赛是在阿里云的数加平台上进行，只能写sql来做特征工程，用mergelog来获得最后的特征表。

## github工程
https://github.com/thuwyh/tianchi-sale-solution
