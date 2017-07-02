class Member < ApplicationRecord
  DEPARTMENTS = %w(财务系统 综训及户外事业部 质量管理中心 信息技术系统 鞋研开发生产中心
                  销售系统 人力资源系统 品牌项目管理中心 跑步事业部 篮羽事业部 韩国设计中心
                  服研开发生产中心 电子商务部 品牌设计部).freeze
  SIZES = %w(L（175以下） XXL（175-185） XXXL（185以上） 儿童120 儿童150).freeze
  FAMILY_AMOUNTS = %w(0 1 2).freeze
  ANNIVERSARIES = %w(25 26 从没参加过).freeze
  BUS_LINE = %w(1号线（四季青桥-李宁公司） 2号线（公主坟-李宁公司） 3号线（崇文门-李宁公司）
              4号线（右安门-李宁公司） 5号线（罗马园-李宁公司） 6号线（望京地铁-李宁公司）
              7号线（管庄-李宁公司） 8号线（通州北苑-李宁公司） 9号线（中关村-李宁公司）
              10号线（北太平庄-李宁公司）).freeze

  attr_accessor :family_sizes1
  attr_accessor :family_sizes2
end
