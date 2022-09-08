package com.rongxing.controller;
import net.sf.json.JSONObject;
import com.rongxing.bean.GoodsInfoWithBLOBs;

import com.rongxing.bean.GoodsInfo;
import com.rongxing.service.GoodsInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
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

	// 传给前端判断是否为修改页面
	boolean flagupd=false;
	// 传给前端判断是否为查找页面
	boolean flagsel=false;
	// 后端判断商品编码是否唯一，默认不唯一
	boolean isFlagGoodsSNOnly=false;


	/**
	 * 商品管理主页
	 * @author 廖宇星 Ray
	 * @date 2022-09-05
	 * 测试 http://localhost:8080/goodsinfo/test486
	 */
	@RequestMapping(value = "/test486",method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView test486(ModelAndView mv,HttpServletRequest request, HttpSession session){
		// 搜索商品的全部信息
        List<GoodsInfo> list = goodsInfoService.selectGoodsInfoAll();
		// 把商品传给前端
        mv.addObject("testselectGoodsInfoAll",list);
		// 初始化设置页面的 flag
		flagtemp(session);
		// 返回前端页面
		mv.setViewName("/ray/goodsinfo_management");
		return mv;
	}


	/**
	 * 方法-新增商品
	 * @author 廖宇星 Ray
	 * @date 2022-09-05
	 * 测试 http://localhost:8080/goodsinfo/insertGoodsInfo
	 */
	@RequestMapping(value = "/insertGoodsInfo",method = {RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public boolean insertGoodsInfo(@RequestParam String goodsinfo,ModelAndView mv, HttpServletRequest request, HttpSession session){
		// 判断商品编号是否唯一
		if (isFlagGoodsSNOnly){
			// 若商品编号不唯一，不能插入
			System.out.println("商品编号不唯一");
			return false;
		}
		// 设置返回是否成功
		boolean flag;
		// 转换前端传回来的json
		JSONObject goodsinfoObject = JSONObject.fromObject(goodsinfo);
		// 转换成 GoodsInfoWithBLOBs 对象
		GoodsInfoWithBLOBs add_goodsinfo =  (GoodsInfoWithBLOBs)JSONObject.toBean(goodsinfoObject,GoodsInfoWithBLOBs.class);
		// id自增，设置为null
		add_goodsinfo.setId(null);
		// 设置state状态，1为上架，2为下架
		if ((boolean) goodsinfoObject.get("state")){
			add_goodsinfo.setState(1);
		}else {
			add_goodsinfo.setState(2);
		}
		// 设置当前操作时间
		add_goodsinfo.setCreatetime(new Date());
		// 设置最后操做时间
		add_goodsinfo.setLastupdatetime(new Date());
		// 设置创建人
		add_goodsinfo.setCreatedby("lyx");
		// 插入数据
		int count = goodsInfoService.insertGoodsInfo(add_goodsinfo);
		// 返回值大于0插入成功
		if(count>0){
			flag=true;
		}else {
			flag=false;
		}
		// 插入完重新查询数据库（刷新操作）
		List<GoodsInfo> list = goodsInfoService.selectGoodsInfoAll();
		// 返回数据给前端
		mv.addObject("testselectGoodsInfoAll",list);
		// 返回前端界面
		mv.setViewName("/ray/goodsinfo_management");
		return flag;
	}



	/**
	 * 方法-通过id查找商品信息
	 * @author 廖宇星 Ray
	 * @date 2022-09-06
	 * 测试 http://localhost:8080/goodsinfo/selectByPrimaryKey
	 */
	@RequestMapping("/selectByPrimaryKey")
	@ResponseBody
	public ModelAndView selectByPrimaryKey(@RequestBody String id,ModelAndView mv,HttpServletRequest request,HttpSession session){
		// 转换前端传回来的json
		JSONObject idObject = JSONObject.fromObject(id);
		// 转换成 String 类型
		String myid1=(String) idObject.get("id");
		// 创建Long对象，将String转化long
//		Long myid =new Long(myid1); // int转long
		Long myid = Long.valueOf(myid1);
		// 通过id查找商品信息
		GoodsInfoWithBLOBs goodsInfo=goodsInfoService.selectByPrimaryKey(myid);
		// 返回数据给前端
		session.setAttribute("selectByPrimaryKeyGoodsInfo",goodsInfo);
		// 返回前端页面
		mv.setViewName("/ray/goodsinfo_management");
		return mv;
	}


	/**
	 * 方法-修改商品
	 * @author 廖宇星 Ray
	 * @date 2022-09-06
	 * 测试 http://localhost:8080/goodsinfo/updateGoodsInfo
	 */
	@RequestMapping("/updateGoodsInfo")
	@ResponseBody
	public boolean updateGoodsInfo(@RequestParam String goodsinfo,ModelAndView mv, HttpServletRequest request, HttpSession session){
		// 设置返回是否成功
		boolean flag;
		// 转换前端传回来的json
		JSONObject goodsinfoObject = JSONObject.fromObject(goodsinfo);
		// 转换成 GoodsInfoWithBLOBs 对象
		GoodsInfoWithBLOBs goodsinfo1 =  (GoodsInfoWithBLOBs)JSONObject.toBean(goodsinfoObject,GoodsInfoWithBLOBs.class);
		// 设置最后操做时间
		goodsinfo1.setLastupdatetime(new Date());
		// 设置state状态，1为上架，2为下架
		if (((Integer)goodsinfoObject.get("state"))==1){
			goodsinfo1.setState(1);
		}else {
			goodsinfo1.setState(2);
		}
		// 修改商品信息
		int count = goodsInfoService.updateGoodsInfo(goodsinfo1);
		// 判断是否修改成功
		if(count>0){
			// 大于0表示修改成功
			flag=true;
		}else {
			// 其它表示修改失败
			flag=false;
		}
		// 修改完重新查询数据库并返回数据给前端
		List<GoodsInfo> list = goodsInfoService.selectGoodsInfoAll();
		// 向前端返回数据
		mv.addObject("testselectGoodsInfoAll",list);
		// 返回前端界面
		mv.setViewName("/ray/goodsinfo_management");
		// ajax请求返回，返回前端,true是成功修改
		return flag;
	}

	/**
	 * 方法-删除商品
	 * @author 廖宇星 Ray
	 * @date 2022-09-06
	 * 测试 http://localhost:8080/goodsinfo/deleteByPrimaryKey
	 */
	@RequestMapping("/deleteByPrimaryKey")
	@ResponseBody
	public boolean deleteByPrimaryKey(@RequestBody String id,ModelAndView mv,HttpServletRequest request,HttpSession session){
		// 设置返回是否成功
		boolean flag;
		// 转换前端传回来的json
		JSONObject idObject = JSONObject.fromObject(id);
		// 转换成 String 类型
		String myid1=(String) idObject.get("id");
		// 创建Long对象，将String转化long
//		Long myid =new Long(myid1); // int转long
		Long myid = Long.valueOf(myid1);
		// 删除商品信息
		int count = goodsInfoService.deleteByPrimaryKey(myid);
		// 判断是否删除成功
		if(count>0){
			// 大于0表示删除成功
			flag=true;
		}else {
			// 其它表示删除失败
			flag=false;
		}
		// 修改完重新查询数据库并返回数据给前端
		List<GoodsInfo> list = goodsInfoService.selectGoodsInfoAll();
		// 向前端传递数据
		mv.addObject("testselectGoodsInfoAll",list);
		// 返回前端界面
		mv.setViewName("/ray/goodsinfo_management");
		// ajax请求返回，返回前端,true是成功修改
		return flag;
	}



	/**
	 * 方法-通过goodsName查找商品信息
	 * @author 廖宇星 Ray
	 * @date 2022-09-07
	 * 测试 http://localhost:8080/goodsinfo/selectGoodsInfobyGoodsName
	 */
	@RequestMapping("/selectGoodsInfobyGoodsName")
	@ResponseBody
	public ModelAndView selectGoodsInfobyGoodsName(@RequestBody String selectmessage,ModelAndView mv,HttpServletRequest request,HttpSession session){
		// 转换前端传回来的json
		JSONObject goodsNameObject = JSONObject.fromObject(selectmessage);
		// 转换成 String 对象
		String goodsName=(String) goodsNameObject.get("selectmessage");
		// 为sql语句 模糊搜索
		goodsName="%"+goodsName+"%";
		// 通过goodsName查找商品信息
		List<GoodsInfo> list=goodsInfoService.selectGoodsInfobyGoodsName(goodsName);
		// 传回前端
		session.setAttribute("selectGoodsInfobyGoodsName",list);
		// 返回前端页面
		mv.setViewName("/ray/goodsinfo_management");
		return mv;
	}

	/**
	 * 查询专用跳转方法
	 * @author 廖宇星 Ray
	 * @date 2022-09-07
	 * 测试 http://localhost:8080/goodsinfo/selectGoodsInfobyGoodsNametemp
	 */
	@RequestMapping(value = "/selectGoodsInfobyGoodsNametemp",method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView selectGoodsInfobyGoodsNametemp(ModelAndView mv,HttpServletRequest request, HttpSession session){
		// 只有这 flagsel 为TRUE
		flagsel=true;
		// 传回前端
		session.setAttribute("flagsel",flagsel);
		// 返回页面
		mv.setViewName("/ray/goodsinfo_management");
		return mv;
	}


	/**
	 * 跳转页面
	 * @return
	 * @author 廖宇星 Ray
	 * @date 2022-09-07
	 */
	@RequestMapping("/goodsinfo_add")
	public String goodsinfo_add_temp(){ return "/ray/goodsinfo_add"; }

	/**
	 * 修改功能专用跳转方法
	 * @author 廖宇星 Ray
	 * @date 2022-09-07
	 * 测试 http://localhost:8080/goodsinfo/updatetemp
	 */
	@RequestMapping(value = "/updatetemp",method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView updatetemp(ModelAndView mv,HttpServletRequest request, HttpSession session){
		// 搜索商品的全部信息
		List<GoodsInfo> list = goodsInfoService.selectGoodsInfoAll();
		mv.addObject("testselectGoodsInfoAll",list);
		// 只有这flagupd为 true
		flagupd=true;
		session.setAttribute("flagupd",flagupd);
		mv.setViewName("/ray/goodsinfo_management");
		return mv;
	}


	/**
	 * 查看专用跳转方法
	 * @author 廖宇星 Ray
	 * @date 2022-09-07
	 * 测试 http://localhost:8080/goodsinfo/showtemp
	 */
	@RequestMapping(value = "/showtemp",method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView showtemp(ModelAndView mv,HttpServletRequest request, HttpSession session){
		mv.setViewName("/ray/goodsinfo_show");
		return mv;
	}



	/**
	 * 验证商品编号是否唯一
	 * @param
	 * @return true是不唯一
	 * @author 廖宇星 Ray
	 * @date 2022-09-08
	 * 测试 http://localhost:8080/goodsinfo/ifGoodsSNOnly
	 */
	@RequestMapping(value = "/ifGoodsSNOnly",method = {RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public boolean ifGoodsSNOnly(@RequestParam String goodsSN,ModelAndView mv, HttpServletRequest request, HttpSession session){
		// 转换前端传回来的json
		JSONObject goodsSNObject = JSONObject.fromObject(goodsSN);
		// 转换成 String
		String strgoodsSN=(String)goodsSNObject.get("goodsSN");
		// 查看收索到几个相同的商品编号
		int count = (goodsInfoService.selectGoodsCountByGoodsSN(strgoodsSN)).intValue();
		// 返回值大于0说明不唯一
		if(count>0){
			isFlagGoodsSNOnly=true;
		}else {
			isFlagGoodsSNOnly=false;
		}
		// 返回前端界面
		mv.setViewName("/ray/goodsinfo_add");
		// ajax请求返回，返回前端
		return isFlagGoodsSNOnly;
	}

	/**
	 * 设置页面 flag
	 * @param session
	 * @author 廖宇星 Ray
	 * @date 2022-09-05
	 */
	public void flagtemp(HttpSession session){
		// 哔哔哔 可能有bug改
		// 设置为非更新页面
		flagupd=false;
		// 设置为非查询页面
		flagsel=false;
		session.setAttribute("flagupd",flagupd);
		session.setAttribute("flagsel",flagsel);
	}




//	/**
//	 * 验证商品编号是否唯一
//	 * @param goodsSN
//	 * @return
//	 * @author 廖宇星 Ray
//	 * @date 2022-09-08
//	 * 测试 http://localhost:8080/goodsinfo/ifGoodsSNOnly
//	 */
//	@RequestMapping(value = "/ifGoodsSNOnly1",method = {RequestMethod.GET,RequestMethod.POST})
//	@ResponseBody
//	public ModelAndView ifGoodsSNOnly1(@RequestBody String goodsSN, ModelAndView mv, HttpServletRequest request){
//		// 转换前端传回来的json
//		JSONObject goodsSNObject = JSONObject.fromObject(goodsSN);
//		// 转换成 String 对象
//		String strgoodsSN=(String) goodsSNObject.get("goodsSN");
//		// 查看收索到几个相同的商品编号
//		int count = (goodsInfoService.selectGoodsCountByGoodsSN(strgoodsSN)).intValue();
//		//
//		boolean flagGoodsSNOnly;
//		if(count>0){
//			flagGoodsSNOnly=false;
//		}else {
//			flagGoodsSNOnly=true;
//		}
//
//		request.setAttribute("flagGoodsSNOnly",flagGoodsSNOnly);
//		mv.setViewName("/ray/goodsinfo_add");
//		return mv;
//	}


//	/**
//	 * 分页显示 失败
//	 * @author 廖宇星 Ray
//	 * @date 2022-09-05
//	 * 测试 http://localhost:8080/goodsinfo/getGoodsInfoByPage
//	 */
//	@RequestMapping(value = "/getGoodsInfoByPage",method = {RequestMethod.GET,RequestMethod.POST})
//	public ModelAndView getGoodsInfoByPage(@RequestBody String pageNum,ModelAndView mv,HttpServletRequest request, HttpSession session){
//
//
//		// 转换前端传回来的json
//		JSONObject pageNumObject = JSONObject.fromObject(pageNum);
//		// 转换成 goodsNameObject 对象
//		String strPageNum=(String) pageNumObject.get("pageNum");
//
//
//		Integer intPageNum=Integer.valueOf(strPageNum);
////		前端通过name传值测试成功
////		Integer intPageNum=Integer.valueOf(request.getParameter("pageNum"));
//
//		//获取当前页数
//		intPageNum=intPageNum==null?1:intPageNum*10;
//
//
//
//		List<GoodsInfo> list = goodsInfoService.getGoodsInfoByPage(intPageNum);
////		session.setAttribute("testselectGoodsInfoAll",list);
//		mv.addObject("testselectGoodsInfoAll",list);
//
//		// 设置页面 flag
//		flagtemp(session);
//
////		测试
////        mv.addObject("test1",486);
//		mv.setViewName("/ray/goodsinfo_management");
//
//		return mv;
//	}

//  分页失败
//	@RequestMapping(value = "/test486",method = {RequestMethod.GET,RequestMethod.POST})
//	public ModelAndView test486(String strPageNum,ModelAndView mv,HttpServletRequest request, HttpSession session){
//		Integer pageNum=strPageNum==null?0:(Integer.parseInt(strPageNum)-1)*10;
//		// 搜索商品的全部信息
//		List<GoodsInfo> list = goodsInfoService.getGoodsInfoByPage(pageNum);
//		// 把商品传给前端
//		mv.addObject("testselectGoodsInfoAll",list);
////		session.setAttribute("pageNum",-1);
//		// 设置页面 flag
//		flagtemp(session);
//		mv.setViewName("/ray/goodsinfo_management");
//		return mv;
//	}
//	@RequestMapping(value = "/getGoodsInfoByPagetemp",method = {RequestMethod.GET,RequestMethod.POST})
//	public ModelAndView getGoodsInfoByPagetemp(ModelAndView mv,HttpServletRequest request, HttpSession session){
//		mv.setViewName("/ray/goodsinfo_management");
//		return mv;
//	}




}
