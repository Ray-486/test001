package com.rongxing.controller;

import net.sf.json.JSONObject;
import com.rongxing.bean.GoodsInfo;
import com.rongxing.service.GoodsInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;


/**
 * 表示层 商品管理控制器
 * GoodsInfoController
 * 添加 selectGoodsInfoAll 方法
 * @author 廖宇星 Ray
 * @date 2022-09-05
 */
// 设置路径，在类上加相当于两级目录才能访问具体方法 http://localhost:8080/goods/test486
@RequestMapping(value = "/goodsinfo")
@Controller
public class GoodsInfoController{

	// 业务逻辑层对象
	@Autowired
	private GoodsInfoService goodsInfoService;

	/**
	 * 到 Ray 的专用测试页面
	 *
	 * @author 廖宇星 Ray
	 * @date 2022-09-05
	 *
	 * 测试 http://localhost:8080/goodsinfo/test486
	 */
	@RequestMapping(value = "/test486",method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView test486(ModelAndView mv){
//		System.out.println("test1");
		// 搜索商品的全部信息
        List<GoodsInfo> list = goodsInfoService.selectGoodsInfoAll();
        mv.addObject("testselectGoodsInfoAll",list);
//        mv.addObject("test1",486);
		mv.setViewName("/ray/ray001");
		return mv;
	}

	/**
	 * 到 Ray 的专用测试页面  测试用代码，可删
	 *
	 * @author 廖宇星 Ray
	 * @date 2022-09-05
	 *
	 * 测试 http://localhost:8080/goodsinfo/test486insertGoodsInfo1
	 */
	@RequestMapping(value = "/test486insertGoodsInfo1",method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView test486insertGoodsInfo1(ModelAndView mv){
		System.out.println("test1");
		// 搜索商品的全部信息
		GoodsInfo goodsInfo1=new GoodsInfo();
		goodsInfo1.setGoodsname("测试1");
		goodsInfo1.setMarketprice(250.00);
		goodsInfo1.setRealprice(255.00);
		goodsInfo1.setNum(9);
//		Date date = new Date();
//		SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd :hh:mm:ss");
//		dateFormat.format(date)
		goodsInfo1.setLastupdatetime(new Date());
		goodsInfoService.insertGoodsInfo(goodsInfo1.getGoodsname(),
				goodsInfo1.getMarketprice(),goodsInfo1.getRealprice(),goodsInfo1.getNum(),goodsInfo1.getLastupdatetime());

		List<GoodsInfo> list = goodsInfoService.selectGoodsInfoAll();
		mv.addObject("testselectGoodsInfoAll",list);
		mv.setViewName("/ray/ray001");
		return mv;
	}

	/**
	 * 到 Ray 的专用测试页面
	 *
	 * @author 廖宇星 Ray
	 * @date 2022-09-05
	 *
	 * 测试 http://localhost:8080/goodsinfo/test486insertGoodsInfo
	 */
	@RequestMapping(value = "/test486insertGoodsInfo",method = {RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public ModelAndView test486insertGoodsInfo(@RequestParam String goodsinfo,ModelAndView mv, HttpServletRequest request, HttpSession session){

		System.out.println("当前测试1");

		//转换前端传回来的json
		JSONObject goodsinfoObject = JSONObject.fromObject(goodsinfo);
		//转换成Role对象
		GoodsInfo add_goodsinfo =  (GoodsInfo)JSONObject.toBean(goodsinfoObject,GoodsInfo.class);
		//更新最后操做时间
		add_goodsinfo.setLastupdatetime(new Date());

		boolean ifInsertSuccess = goodsInfoService.insertGoodsInfo(add_goodsinfo.getGoodsname(),
				add_goodsinfo.getMarketprice(), add_goodsinfo.getRealprice(), add_goodsinfo.getNum(), add_goodsinfo.getLastupdatetime());

		System.out.println(ifInsertSuccess);
		List<GoodsInfo> list = goodsInfoService.selectGoodsInfoAll();
		mv.addObject("testselectGoodsInfoAll",list);
		mv.setViewName("/ray/ray001");
		return mv;






//		System.out.println("当前测试1");
//		// 搜索商品的全部信息
//		GoodsInfo goodsInfo1=new GoodsInfo();
//		goodsInfo1.setGoodsname(request.getParameter("goodsname"));
//		Double d1 = new Double(request.getParameter("marketprice"));
//		goodsInfo1.setMarketprice(d1);
//		Double d2 = new Double(request.getParameter("realprice"));
//		goodsInfo1.setRealprice(d2);
//		Integer i1=new Integer(request.getParameter("num"));
//		goodsInfo1.setNum(i1);
////		Date date = new Date();
////		SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd :hh:mm:ss");
////		dateFormat.format(date)
//		goodsInfo1.setLastupdatetime(new Date());
//
//		boolean ifInsertSuccess = goodsInfoService.insertGoodsInfo(goodsInfo1.getGoodsname(),
//				goodsInfo1.getMarketprice(), goodsInfo1.getRealprice(), goodsInfo1.getNum(), goodsInfo1.getLastupdatetime());
//
//		System.out.println(ifInsertSuccess);
//		List<GoodsInfo> list = goodsInfoService.selectGoodsInfoAll();
//		mv.addObject("testselectGoodsInfoAll",list);
//		mv.setViewName("/ray/ray001");
//		return mv;
	}







//
//
//	@RequestMapping("/backend/goodslist.html")
//	public ModelAndView goodsList(HttpSession session,Model model,
//								 @RequestParam(value="s_goodsName",required=false) String s_goodsName){
//		Map<String,Object> baseModel= (Map<String,Object>)session.getAttribute(Constants.SESSION_BASE_MODEL);
//		if(baseModel == null){
//			return new ModelAndView("redirect:/");
//		}else{
//			GoodsInfo goodsInfo = new GoodsInfo();
//			if(null != s_goodsName)
//				goodsInfo.setGoodsName("%"+SQLTools.transfer(s_goodsName)+"%");
//			goodsInfo.setState(1);
//			goodsInfo.setStarNum(0);
//			goodsInfo.setPageSize(10000);
//			List<GoodsInfo> goodsInfoList = null;
//				try {
//					goodsInfoList = goodsInfoService.getGoodsInfoList(goodsInfo);
//				}catch (Exception e) {
//					// TODO: handle exception
//					e.printStackTrace();
//					goodsInfoList = null;
//				}
//			model.addAllAttributes(baseModel);
//			model.addAttribute("goodsInfoList", goodsInfoList);
//			model.addAttribute("s_goodsName", s_goodsName);
//			return new ModelAndView("/backend/goodslist");
//		}
//	}
	
	
	
	/**
	 * 获取列表（分页）
	 * @return
	 */
//	@RequestMapping("/backend/goodsinfolist.html")
//	public ModelAndView goodsInfoList(HttpSession session,Model model,
//								@RequestParam(value="currentpage",required=false)Integer currentpage ,
//								@RequestParam(value="s_goodsName",required=false) String s_goodsName,
//								@RequestParam(value="s_state",required=false) String s_state
//								){
//		Map<String,Object> baseModel= (Map<String,Object>)session.getAttribute(Constants.SESSION_BASE_MODEL);
//		if(baseModel == null){
//			return new ModelAndView("redirect:/");
//		}else{
//			GoodsInfo goodsInfo = new GoodsInfo();
//			if(null != s_goodsName)
//				goodsInfo.setGoodsName("%"+SQLTools.transfer(s_goodsName)+"%");
//			if(!StringUtils.isNullOrEmpty(s_state))
//				goodsInfo.setState(Integer.valueOf(s_state));
//			else
//				goodsInfo.setState(null);
//			PageSupport page = new PageSupport();
//
//			try{
//				page.setTotalCount(goodsInfoService.count(goodsInfo));
//			}catch (Exception e1) {
//				// TODO: handle exception
//				e1.printStackTrace();
//				page.setTotalCount(0);
//			}
//			if(page.getTotalCount() > 0){
//				if(currentpage != null)
//					page.setPage(currentpage);
//				if(page.getPage() <= 0)
//					page.setPage(1);
//				if(page.getPage() > page.getPageCount())
//					page.setPage(page.getPageCount());
//				goodsInfo.setStarNum((page.getPage() - 1) * page.getPageSize());
//				goodsInfo.setPageSize(page.getPageSize());
//				List<GoodsInfo> goodsInfoList = null;
//				try {
//					goodsInfoList = goodsInfoService.getGoodsInfoList(goodsInfo);
//				}catch (Exception e) {
//					// TODO: handle exception
//					e.printStackTrace();
//					goodsInfoList = null;
//					if(page == null){
//						page = new PageSupport();
//						page.setItems(null);
//					}
//				}
//				page.setItems(goodsInfoList);
//			}else{
//				page.setItems(null);
//			}
//			model.addAllAttributes(baseModel);
//			model.addAttribute("page", page);
//			model.addAttribute("s_goodsName", s_goodsName);
//			model.addAttribute("s_state", s_state);
//			return new ModelAndView("/backend/goodsinfolist");
//		}
//	}
//
//	@RequestMapping(value = "/backend/addgoodsinfo.html",method=RequestMethod.POST)
//	public ModelAndView addGoodsInfo(HttpSession session,@ModelAttribute("addGoodsInfo") GoodsInfo addGoodsInfo){
//		if(session.getAttribute(Constants.SESSION_BASE_MODEL) == null){
//			return new ModelAndView("redirect:/");
//		}else{
//			try {
//				addGoodsInfo.setCreateTime(new Date());
//				addGoodsInfo.setCreatedBy(((User)session.getAttribute(Constants.SESSION_USER)).getLoginCode());
//				addGoodsInfo.setLastUpdateTime(new Date());
//				goodsInfoService.addGoodsInfo(addGoodsInfo);
//			} catch (Exception e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//			return new ModelAndView("redirect:/backend/goodsinfolist.html");
//		}
//	}
//
//	@RequestMapping(value = "/backend/modifygoodsinfo.html",method=RequestMethod.POST)
//	public ModelAndView modifyGoodsInfo(HttpSession session,@ModelAttribute("modifyGoodsInfo") GoodsInfo modifyGoodsInfo){
//		if(session.getAttribute(Constants.SESSION_BASE_MODEL) == null){
//			return new ModelAndView("redirect:/");
//		}else{
//			try {
//				modifyGoodsInfo.setLastUpdateTime(new Date());
//				goodsInfoService.modifyGoodsInfo(modifyGoodsInfo);
//			} catch (Exception e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//			return new ModelAndView("redirect:/backend/goodsinfolist.html");
//		}
//	}
//
//	@RequestMapping(value = "/backend/delgoodsinfo.html", produces = {"text/html;charset=UTF-8"})
//	@ResponseBody
//	public String delGoodsInfo(@RequestParam(value="delId",required=false) String delId){
//
//		String result= "false" ;
//		GoodsInfo delGoodsInfo = new GoodsInfo();
//		delGoodsInfo.setId(Integer.valueOf(delId));
//		try {
//			if(goodsInfoService.isExitInPack(delGoodsInfo) > 0){
//				result = "isused";
//			}else{
//				if(goodsInfoService.deleteGoodsInfo(delGoodsInfo) > 0)
//					result = "success";
//			}
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return result;
//	}
//
//	@RequestMapping(value = "/backend/goodsSNisexit.html", produces = {"text/html;charset=UTF-8"})
//	@ResponseBody
//	public String loginCodeIsExit(@RequestParam(value="goodsSN",required=false) String goodsSN,
//								  @RequestParam(value="id",required=false) String id){
//		String result = "failed";
//		GoodsInfo _goodsInfo = new GoodsInfo();
//		_goodsInfo.setGoodsSN(goodsSN);
//		if(!id.equals("-1"))
//			_goodsInfo.setId(Integer.valueOf(id));
//		try {
//			if(goodsInfoService.goodsSNIsExit(_goodsInfo) == 0)
//				result = "only";
//			else
//				result = "repeat";
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//			return result;
//		}
//		return result;
//	}
//
//	@RequestMapping(value = "/backend/getgoodsinfo.html", produces = {"text/html;charset=UTF-8"})
//	@ResponseBody
//	public Object getGoodsInfo(@RequestParam(value="id",required=false) String id){
//		String cjson = "";
//		if(null == id || "".equals(id)){
//			return "nodata";
//		}else{
//			try {
//				GoodsInfo goodsInfo = new GoodsInfo();
//				goodsInfo.setId(Integer.valueOf(id));
//				goodsInfo = goodsInfoService.getGoodsInfoById(goodsInfo);
//				JsonConfig jsonConfig = new JsonConfig();
//				jsonConfig.registerJsonValueProcessor(Date.class,new JsonDateValueProcessor());
//				JSONObject jo = JSONObject.fromObject(goodsInfo,jsonConfig);
//				cjson = jo.toString();
//			} catch (Exception e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//				return "failed";
//			}
//				return cjson;
//		}
//	}
//
//	@RequestMapping("/backend/modifystate.html")
//	@ResponseBody
//	public Object modifyState(HttpSession session,@RequestParam String state){
//
//		if(null == state || "".equals(state)){
//			return "nodata";
//		}else{
//			JSONObject goodsInfoObject = JSONObject.fromObject(state);
//			GoodsInfo stateObjGoodsInfo =  (GoodsInfo)JSONObject.toBean(goodsInfoObject, GoodsInfo.class);
//			try {
//				goodsInfoService.modifyGoodsInfo(stateObjGoodsInfo);
//			} catch (Exception e) {
//				// TODO Auto-generated catch block
//				return "failed";
//			}
//			return "success";
//		}
//
//	}
	
}
