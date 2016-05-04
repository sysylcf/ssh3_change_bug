package com.lcf.shop.order.adminaction;



import java.util.List;

import com.lcf.shop.order.service.OrderService;
import com.lcf.shop.order.vo.Order;
import com.lcf.shop.order.vo.OrderItem;
import com.lcf.shop.utils.PageBean;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;


public class AdminOrderAction extends ActionSupport implements ModelDriven<Order>{
	// 模型驱动使用的类
	private Order order = new Order();

	public Order getModel() {
		return order;
	}
	// 接收page参数
	private Integer page=1;
	private Integer states =1;
	
	public void setStates(Integer states) {
		this.states = states;
	}


	public Integer getStates() {
		return states;
	}


	public void setPage(Integer page) {
		this.page = page;
	}
	
	// 注入OrderService
	private OrderService orderService;

	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}


	// 提供后台查询所有订单的方法:
	public String findAll(){
		// 订单的分页查询
		System.out.println("开始获取订单");
		PageBean<Order> pageBean = orderService.findAll(page);
		// 将数据存入到值栈中保存到页面
		System.out.println("订单获取成功");
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		// 页面跳转:
		return "findAll";
	}
	
	public String findAllByState(){
		System.out.println(states+"sssssssssssss");
		PageBean<Order> pageBean = orderService.findAllByState(page,states);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "findAllbyState";
	}

	// 修改订单状态
	public String updateState(){
		// 根据id查询订单
		Order currOrder = orderService.findByOid(order.getOid());
		currOrder.setState(3);
		orderService.update(currOrder);
		// 页面跳转
		return "updateStateSuccess";
	}
	
	// 根据订单的id查询订单项:
	public String findOrderItem(){
		// 根据订单id查询订单项:
		List<OrderItem> list = orderService.findOrderItem(order.getOid());
		// 显示到页面:
		ActionContext.getContext().getValueStack().set("list", list);
		// 页面跳转
		return "findOrderItem";
	}
	
	
}
