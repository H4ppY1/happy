
use happyData;

-- 字典表
create table dictionary (
    iSerialNo   int not null auto_increment, -- 自增号
    vcDictId    varchar(8),                  -- 字典编号
    vcKey       varchar(8),                  -- 字典项
    vcValue     varchar(128),                -- 字典值
    vcCaption   varchar(255),                -- 说明
  primary key (iSerialNo)
) default charset = UTF8;


-- 支付宝账单
create table alipayRecord (
    iSerialNo        int not null auto_increment, -- 自增号
    vcTradeNo        varchar(128),                -- 交易号（支付宝）
    vcOrderNo        varchar(128),                -- 商户订单号
    dCreateTime      datetime,                    -- 交易创建时间
    dOccurTime       datetime,                    -- 付款时间
    dLastModifyTime  datetime,                    -- 最近修改时间
    vcOrderSource    varchar(255),                -- 交易来源地
    vcTradeType      varchar(8),                  -- 类型
    vcTradeRivalName varchar(255),                -- 交易对方
    vcCommodityName  varchar(255),                -- 商品名称
    fOccurAmount     numeric(12,2),               -- 金额
    vcTradeKind      varchar(8),                  -- 收/支
    vcOrderStatus    varchar(8),                  -- 交易状态
    fServiceAmount   numeric(12,2),               -- 服务费
    fRefundAmount    numeric(12,2),               -- 成功退款
    vcRemark         varchar(255),                -- 备注
    vcCapitalStatus  varchar(8),                  -- 资金状态
  primary key (iSerialNo)
) default charset = UTF8;







