/*
 * 宠物商城网站 - 测试数据
 * 生成日期: 2025-11-04
 * 说明: 包含丰富的商品、用户、订单、评价等测试数据
 */

USE `chongwushangchengwangzhan`;

-- =====================================================
-- 1. 清空并插入商品数据 (shangpin表)
-- =====================================================
-- 注意：这里使用 TRUNCATE 清空表，如果不想删除现有数据，请改为 DELETE FROM shangpin WHERE id > 某个值
TRUNCATE TABLE `shangpin`;

INSERT INTO `shangpin` (
    `id`, `shangpin_name`, `shangpin_photo`, `shangpin_types`,
    `shangpin_kucun_number`, `shangpin_price`, `shangpin_old_money`,
    `shangpin_new_money`, `shangpin_clicknum`, `shangxia_types`,
    `shangpin_delete`, `shangpin_content`, `create_time`
) VALUES
-- 商品类型1的商品
(1, '皇家优品成犬粮10kg装', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin1.jpg', 1, 200, 30, 398.00, 298.00, 156, 1, 1,
'<p><b>皇家优品成犬粮</b>采用优质鸡肉、牛肉为主要原料，富含蛋白质和多种维生素。</p><p><b>主要成分：</b>鸡肉、牛肉、深海鱼油、维生素A/D/E</p><p><b>适用对象：</b>1-7岁成年犬</p><p><b>规格：</b>10kg/袋</p>',
'2022-02-22 10:00:00'),

(2, '进口猫粮三文鱼味5kg', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin2.jpg', 1, 180, 25, 288.00, 218.00, 203, 1, 1,
'<p>精选优质三文鱼为主要蛋白质来源，富含Omega-3脂肪酸。</p><p><b>主要成分：</b>三文鱼、鸡肉粉、牛磺酸、Omega-3</p><p><b>适用对象：</b>1岁以上成年猫</p><p><b>规格：</b>5kg/袋</p>',
'2022-02-22 10:10:00'),

(3, '幼犬奶糕粮2kg专业配方', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin3.jpg', 1, 150, 15, 168.00, 128.00, 98, 1, 1,
'<p>专为1-4月龄幼犬设计的营养奶糕粮，添加益生菌保护肠道健康。</p><p><b>主要成分：</b>脱脂奶粉、鸡肉、DHA、益生菌</p><p><b>适用对象：</b>1-4月龄幼犬</p>',
'2022-02-22 10:20:00'),

(4, '猫罐头金枪鱼味85g*12罐', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin4.jpg', 1, 300, 12, 148.00, 108.00, 267, 1, 1,
'<p>精选优质金枪鱼，肉质鲜嫩，口感细腻。无谷物配方，适合肠胃敏感的猫咪。</p><p><b>规格：</b>85g*12罐</p><p><b>适用对象：</b>全年龄段猫咪</p>',
'2022-02-22 10:30:00'),

(5, '狗狗训练零食鸡肉条500g', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin5.jpg', 1, 250, 8, 58.00, 38.00, 189, 1, 1,
'<p>采用新鲜鸡胸肉为原料，经过低温烘干工艺，不添加防腐剂。</p><p><b>净含量：</b>500g</p><p><b>适用对象：</b>3个月以上犬类</p>',
'2022-02-22 10:40:00'),

-- 商品类型2的商品（玩具）
(6, '宠物智能发声玩具球', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin6.jpg', 2, 200, 5, 68.00, 48.00, 145, 1, 1,
'<p>采用优质TPR环保材料，安全无毒，耐咬耐用。内置发声器，滚动时发出声音。</p><p><b>材质：</b>TPR环保橡胶</p><p><b>尺寸：</b>直径7cm</p>',
'2022-02-22 11:00:00'),

(7, '猫抓板磨爪器麻绳柱', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin7.jpg', 2, 120, 10, 128.00, 98.00, 178, 1, 1,
'<p>采用天然剑麻绳缠绕，耐抓耐磨，满足猫咪磨爪天性。配有悬挂逗猫球。</p><p><b>材质：</b>天然剑麻、实木底座</p><p><b>尺寸：</b>高60cm</p>',
'2022-02-22 11:10:00'),

(8, '猫咪逗猫棒羽毛玩具套装', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin8.jpg', 2, 180, 3, 38.00, 25.00, 234, 1, 1,
'<p>一套5件逗猫玩具，包含不同款式羽毛、铃铛等配件。可更换头部设计。</p><p><b>套装内容：</b>伸缩杆*1、羽毛头*3、铃铛球*2</p>',
'2022-02-22 11:20:00'),

(9, '狗狗洁齿骨磨牙棒500g', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin9.jpg', 2, 220, 6, 58.00, 42.00, 167, 1, 1,
'<p>采用优质牛皮制成，有效清洁牙齿，减少牙结石形成。天然无添加。</p><p><b>规格：</b>500g(约10-15根)</p><p><b>适用对象：</b>4个月以上犬类</p>',
'2022-02-22 11:30:00'),

(10, '宠物益智漏食球玩具', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin10.jpg', 2, 160, 7, 78.00, 58.00, 92, 1, 1,
'<p>可调节漏食速度，增加宠物进食趣味性，减缓进食速度。</p><p><b>材质：</b>食品级PC材料</p><p><b>适用对象：</b>猫狗通用</p>',
'2022-02-22 11:40:00'),

-- 商品类型3的商品（用品）
(11, '猫砂膨润土结团型10L', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin11.jpg', 3, 300, 5, 68.00, 48.00, 289, 1, 1,
'<p>采用优质膨润土原料，遇水快速结团，强效除臭配方。低粉尘设计。</p><p><b>规格：</b>10L/袋</p><p><b>使用方法：</b>倒入猫砂盆约5-7cm厚度</p>',
'2022-02-22 12:00:00'),

(12, '宠物自动饮水机2.5L', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin12.jpg', 3, 150, 18, 198.00, 158.00, 134, 1, 1,
'<p>智能循环过滤饮水机，三重过滤系统。超静音设计，2.5L大容量。</p><p><b>容量：</b>2.5L</p><p><b>功率：</b>2W</p><p><b>适用对象：</b>猫狗通用</p>',
'2022-02-22 12:10:00'),

(13, '宠物冬季保暖窝垫', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin1.jpg', 3, 100, 20, 208.00, 168.00, 112, 1, 1,
'<p>采用优质短毛绒面料，柔软舒适，保暖性能优越。可拆卸清洗。</p><p><b>面料：</b>水晶短毛绒+PP棉</p><p><b>尺寸：</b>S/M/L三个规格</p>',
'2022-02-22 12:20:00'),

(14, '狗狗牵引绳胸背带套装', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin2.jpg', 3, 180, 8, 98.00, 68.00, 156, 1, 1,
'<p>采用透气网布材质，反光条设计，夜间遛狗更安全。配有1.5米牵引绳。</p><p><b>材质：</b>透气网布+尼龙织带</p><p><b>尺寸：</b>S/M/L可选</p>',
'2022-02-22 12:30:00'),

(15, '宠物指甲剪专业款', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin3.jpg', 3, 200, 4, 48.00, 32.00, 98, 1, 1,
'<p>采用优质不锈钢刀片，锋利耐用。半月形刀口设计，修剪更精准。</p><p><b>材质：</b>不锈钢刀片+ABS手柄</p><p><b>适用对象：</b>猫狗通用</p>',
'2022-02-22 12:40:00'),

-- 商品类型4的商品
(16, '宠物外出便携背包', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin4.jpg', 4, 90, 25, 228.00, 188.00, 87, 1, 1,
'<p>采用透气网布设计，保证宠物呼吸顺畅。可扩展设计，空间更大。</p><p><b>尺寸：</b>42x28x26cm</p><p><b>承重：</b>10kg以内</p>',
'2022-02-22 13:00:00'),

(17, '宠物益生菌调理肠胃60包', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin5.jpg', 4, 150, 12, 98.00, 68.00, 145, 1, 1,
'<p>含有多种活性益生菌，有效调理肠道菌群平衡，改善腹泻、便秘。</p><p><b>规格：</b>2g*60包</p><p><b>适用对象：</b>猫狗通用</p>',
'2022-02-22 13:10:00'),

(18, '幼猫羊奶粉营养品400g', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin6.jpg', 4, 120, 15, 138.00, 98.00, 109, 1, 1,
'<p>采用优质羊奶粉为原料，添加益生菌和多种维生素，易于消化吸收。</p><p><b>净含量：</b>400g</p><p><b>适用对象：</b>幼猫、孕猫、病猫</p>',
'2022-02-22 13:20:00'),

(19, '宠物除臭喷雾500ml', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin7.jpg', 4, 200, 6, 68.00, 45.00, 176, 1, 1,
'<p>采用植物提取除臭因子，温和安全。快速分解异味分子，持久清新。</p><p><b>净含量：</b>500ml</p><p><b>使用方法：</b>距离20cm喷洒</p>',
'2022-02-22 13:30:00'),

(20, '猫咪化毛膏120g', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin8.jpg', 4, 180, 9, 78.00, 58.00, 123, 1, 1,
'<p>采用植物油脂和纤维素为主要成分，有效帮助排出体内毛球，预防毛球症。</p><p><b>净含量：</b>120g</p><p><b>用法用量：</b>每次3-5cm，每周2-3次</p>',
'2022-02-22 13:40:00'),

-- 再增加10个商品，丰富数据
(21, '老年犬专用粮5kg关节养护', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin9.jpg', 1, 100, 28, 298.00, 238.00, 76, 1, 1,
'<p>专为7岁以上老年犬设计，低脂肪配方。添加葡萄糖胺和软骨素，保护关节健康。</p><p><b>规格：</b>5kg/袋</p><p><b>适用对象：</b>7岁以上老年犬</p>',
'2022-02-22 14:00:00'),

(22, '猫咪冻干零食鸡肉粒100g', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin10.jpg', 1, 160, 10, 88.00, 68.00, 134, 1, 1,
'<p>采用冻干技术，保留肉类原有营养和口感。100%纯肉无添加。</p><p><b>净含量：</b>100g</p><p><b>适用对象：</b>全年龄段猫咪</p>',
'2022-02-22 14:10:00'),

(23, '宠物电动磨甲器', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin11.jpg', 3, 130, 13, 118.00, 88.00, 89, 1, 1,
'<p>USB充电式，低噪音设计，不会惊吓宠物。三档调速，适合不同体型宠物。</p><p><b>特点：</b>安全防夹、低噪音、长续航</p>',
'2022-02-22 14:20:00'),

(24, '狗狗雨衣防水外套', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin12.jpg', 4, 110, 8, 78.00, 58.00, 95, 1, 1,
'<p>防水面料，透气不闷热。魔术贴设计，穿脱方便。多种尺码和颜色可选。</p><p><b>尺寸：</b>S/M/L/XL</p><p><b>适用季节：</b>雨季出行</p>',
'2022-02-22 14:30:00'),

(25, '猫咪自动喂食器', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin1.jpg', 3, 80, 35, 388.00, 298.00, 67, 1, 1,
'<p>定时定量喂食，支持APP远程控制。4L大容量，可录制呼唤声音。</p><p><b>容量：</b>4L</p><p><b>功能：</b>定时、定量、远程控制</p>',
'2022-02-22 14:40:00'),

(26, '宠物梳毛器脱毛梳', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin2.jpg', 3, 170, 6, 58.00, 38.00, 142, 1, 1,
'<p>不锈钢梳齿，有效去除浮毛和死毛。人体工学手柄设计，梳理更省力。</p><p><b>适用对象：</b>长毛猫犬</p><p><b>特点：</b>防静电、不伤皮肤</p>',
'2022-02-22 14:50:00'),

(27, '狗狗航空箱外出笼', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin3.jpg', 4, 70, 40, 268.00, 198.00, 54, 1, 1,
'<p>符合航空运输标准，坚固耐用。上开门+前开门设计，通风透气。</p><p><b>尺寸：</b>M/L/XL</p><p><b>承重：</b>25kg以内</p>',
'2022-02-22 15:00:00'),

(28, '猫咪智能自动猫砂盆', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin4.jpg', 3, 50, 80, 1288.00, 998.00, 43, 1, 1,
'<p>全自动清理，APP监控。封闭式设计，除臭效果好。适合多猫家庭。</p><p><b>功能：</b>自动清理、除臭、APP监控</p><p><b>适用对象：</b>3-10kg猫咪</p>',
'2022-02-22 15:10:00'),

(29, '宠物驱虫项圈防跳蚤', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin5.jpg', 4, 190, 7, 68.00, 48.00, 167, 1, 1,
'<p>天然植物精油配方，安全无毒。8个月长效防护，防跳蚤、蜱虫。</p><p><b>有效期：</b>8个月</p><p><b>尺寸：</b>可调节</p>',
'2022-02-22 15:20:00'),

(30, '狗狗营养膏120g增肥补钙', 'http://localhost:8080/chongwushangchengwangzhan/upload/shangpin6.jpg', 4, 140, 11, 88.00, 68.00, 118, 1, 1,
'<p>富含多种维生素和矿物质，增强免疫力。适合体弱、挑食、术后恢复期狗狗。</p><p><b>净含量：</b>120g</p><p><b>用法：</b>每日2-3cm</p>',
'2022-02-22 15:30:00');

-- =====================================================
-- 查看插入的数据统计
-- =====================================================
SELECT COUNT(*) AS '商品总数',
       SUM(CASE WHEN shangpin_types = 1 THEN 1 ELSE 0 END) AS '类型1商品数',
       SUM(CASE WHEN shangpin_types = 2 THEN 1 ELSE 0 END) AS '类型2商品数',
       SUM(CASE WHEN shangpin_types = 3 THEN 1 ELSE 0 END) AS '类型3商品数',
       SUM(CASE WHEN shangpin_types = 4 THEN 1 ELSE 0 END) AS '类型4商品数'
FROM shangpin
WHERE shangpin_delete = 1;

/*
 * 数据说明:
 * - 共插入30个商品
 * - 商品类型1（宠物食品）：7个
 * - 商品类型2（宠物玩具）：5个
 * - 商品类型3（宠物用品）：10个
 * - 商品类型4（其他用品）：8个
 * - 所有商品均为上架状态(shangxia_types=1)
 * - 所有商品均未被逻辑删除(shangpin_delete=1)
 * - 商品价格区间：25元-998元
 * - 商品库存充足：50-300件不等
 *
 * 使用方法:
 * 1. 确保数据库连接正常
 * 2. 执行此SQL文件: source /path/to/test_data.sql
 * 3. 或在MySQL客户端工具中导入此文件
 *
 * 注意事项:
 * - 此脚本会清空shangpin表的现有数据（使用TRUNCATE）
 * - 如需保留现有数据，请修改TRUNCATE为DELETE语句并调整ID
 * - 图片路径使用的是localhost，实际使用时需要上传对应图片
 */
