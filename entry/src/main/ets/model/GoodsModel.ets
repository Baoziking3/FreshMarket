import Goods from '../viewmodel/Goods'
import GoodsCategory from '../viewmodel/GoodsCategory'
import GroupInfo from '../viewmodel/GroupInfo'
import { GoodsCategories,GoodsCategoryEnum } from './GoodsCategoryModel'


const goods: Goods[] = [
  new Goods(0, '米饭',$r('app.media.rice'),GoodsCategoryEnum.OIL, 4.99,  '我是米饭'),
  new Goods(1, '馒头',$r('app.media.steamed_bun'),GoodsCategoryEnum.FASTFOOD, 2.99, '我是馒头'),
  new Goods(2, '面包',$r('app.media.bun'),GoodsCategoryEnum.MILKBAKE, 8.99, '我是面包'),
  new Goods(3, '全麦吐司',$r('app.media.toast'),GoodsCategoryEnum.MILKBAKE, 12.99, '我是全麦吐司'),
  new Goods(4, '紫薯',$r('app.media.purple_potato'),GoodsCategoryEnum.FRUITVEG, 3.99, '我是紫薯'),
  new Goods(5, '煮玉米',$r('app.media.corn'),GoodsCategoryEnum.COOKEDFOOD, 2.99,'我是煮玉米'),
  new Goods(6, '黄瓜',$r('app.media.cucumber'),GoodsCategoryEnum.FRUITVEG, 3.99,'我是黄瓜'),
  new Goods(7, '蓝莓',$r('app.media.blueberry'),GoodsCategoryEnum.FRUITVEG, 8.5,'我是蓝莓'),
  new Goods(8, '草莓',$r('app.media.strawberry'),GoodsCategoryEnum.FRUITVEG, 15.99, '我是草莓'),
  new Goods(9, '火龙果',$r('app.media.pitaya'),GoodsCategoryEnum.FRUITVEG, 8.99, '我是火龙果'),
  new Goods(10, '奇异果',$r('app.media.kiwi'),GoodsCategoryEnum.FRUITVEG, 28.99, '我是奇异果'),
  new Goods(11, '煮鸡蛋',$r('app.media.egg'),GoodsCategoryEnum.MEATEGG, 1.99,'我是煮鸡蛋'),
  new Goods(12, '鸡胸肉',$r('app.media.chicken_breast'),GoodsCategoryEnum.MEATEGG, 12.99, '我是鸡胸肉'),
  new Goods(13, '鸡腿肉',$r('app.media.chicken_leg'),GoodsCategoryEnum.MEATEGG, 13.99, '我是鸡腿肉'),
  new Goods(14, '牛肉',$r('app.media.beef'),GoodsCategoryEnum.MEATEGG, 24.99, '我是牛肉'),
  new Goods(15, '鱼肉',$r("app.media.fish"),GoodsCategoryEnum.MEATEGG, 16.99,'我是鱼肉'),
  new Goods(16, '牛奶',$r("app.media.milk"),GoodsCategoryEnum.MILKBAKE, 16.99,'我是牛奶'),
  new Goods(17, '酸奶',$r("app.media.yogurt"),GoodsCategoryEnum.MILKBAKE, 13.99,'我是酸奶'),
  new Goods(18, '核桃',$r("app.media.walnut"),GoodsCategoryEnum.SNAKE, 7.99,'我是核桃'),
  new Goods(19, '花生',$r("app.media.peanut"),GoodsCategoryEnum.SNAKE, 5.99, '我是花生'),
  new Goods(20, '腰果',$r("app.media.cashew"),GoodsCategoryEnum.SNAKE, 6.99, '我是腰果'),
  new Goods(21, '无糖拿铁',$r("app.media.coffee"),GoodsCategoryEnum.DRINKS, 12.99, '我是无糖拿铁'),
  new Goods(22, '豆浆',$r("app.media.soybean_milk"),GoodsCategoryEnum.MILKBAKE, 3.99, '我是豆浆'),
]

class GoodsModel{


  list(): Goods[]{
    return goods
  }

  listItemGroupByCategory(){
    // 1.创建空的分组
    let groups = GoodsCategories.map(goodsCategory => new GroupInfo(goodsCategory, []))
    // 2.遍历记录项列表，将食物添加到对应的分组
    goods.forEach(food => groups[food.categoryID].items.push(food))
    // 3.返回结果
    return groups
  }
}

let goodsModel = new GoodsModel()

export default goodsModel as GoodsModel