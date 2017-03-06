package com.company.springmvc.services.api.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.company.springmvc.services.staffinfo.impl.StaffInfoImpl;
import com.company.springmvc.services.staffinfo.vo.StaffInfoVo;
import com.sun.istack.internal.logging.Logger;

//负责注册一个bean 到spring 上下文中
@Controller
@RequestMapping("/jpq/con")
public class StaffInfoService {
	//@Autowired，虽然有区别，但基本可以忽略，替换使用
	@Resource
	private StaffInfoImpl staffInfoImpl;
	Logger log = Logger.getLogger(this.getClass());
	
	/**
	 * request=false/ture表示前端的参数是否一定要传入,默认是true
	 * int型如果不传入，会报错，于是设置默认值default= 1，因为如果不传入值就会为空值null，int为空是不可以的。
	 * 建议使用包装类型代替基本类型，如使用“Integer”代替“int”
	 * value = "name"是前台传入参数，String name是对应的后台参数，名字可以不一样，同样绑定在一起
	 * 可以省略@RequestParam name，这样名字就必须一样
	 * defaultValue = ""，只能是字符串，如果是int则会自动转换。可省略该句，不要的话，默认值就是相应类型的默认值null、0、false等。
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("/hello")
    public String hello(
    		@RequestParam(value = "id", required = false) Integer id,
    		@RequestParam(value = "name", required = false) String name,
            Model model){
			StaffInfoVo vo = staffInfoImpl.getStaffInfosVo(id, name);
			String infos = vo.toString();
			String html = "请看<br/><p> 序号	姓名		年龄	性别	身高 </p><br/>";
			model.addAttribute("myhtml", html);
			
			model.addAttribute("info", infos);
			//和下面的mav.setViewName("staffinfo")一样，返回InternalResourceViewResolver内的视图，路径也在其中定义了
    		return "mixPage";
    }
	
	@RequestMapping("/urlStaffInfo")// @RequestMapping(value="/hello",method=RequestMethod.GET)  
    public ModelAndView getStaffInfoLists(
    		@RequestParam(value = "id", required = false) Integer id,
    		@RequestParam(value = "name", required = false) String name){
		StaffInfoVo vo = staffInfoImpl.getStaffInfosVo(id, name);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("staffinfo");
		String infos = vo.toString();
		String html = "请看<br/><p> 序号	姓名		年龄	性别	身高 </p><br/>";
        mav.addObject("myhtml", html);
        mav.addObject("info", infos);
        mav.addObject("msg","Hello, World!"); 
        return mav;
    }
	
	//@RequestMapping 注解为控制器指定可以处理哪些 URL 请求
    @RequestMapping("/urlView")
    public ModelAndView view(HttpServletRequest request){
//        String path = request.getParameter("name");
//        System.out.println(path);
//        System.out.println(request.getParameter("id"));
//        path = request.getRequestURI();
        ModelAndView mav = new ModelAndView();
        mav.setViewName("view");
        System.out.println(mav.getViewName());
        return mav;
    }

    @RequestMapping("/urlSee")
    public ModelAndView seeit(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("see");
        System.out.println(mav.getViewName());
        return mav;
    }
}
