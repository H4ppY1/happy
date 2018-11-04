//package com.h4ppY.happy.controller;
//
//import com.alibaba.fastjson.JSONArray;
//import com.h4ppY.happy.pojo.Category;
//import com.h4ppY.happy.service.CategoryService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.ResponseBody;
//
//import java.util.List;
//
//import javax.servlet.http.HttpServletResponse;
//
//@Controller
//@RequestMapping("")
//public class CategoryController {
//    @Autowired
//    CategoryService categoryService;
//
//    @RequestMapping("admin_category_list")
//    public String list(Model model){
//        List<Category> cs= categoryService.list();
//        model.addAttribute("cs", cs);
//        return "admin/listCategory";
//    }
//
//    @RequestMapping(value = "admin_category_list_temp")
//    @ResponseBody
//    public String foreAssetManage (Model model,HttpServletResponse response){
////        model.addAttribute("assetList", assetService.list());
//
//        response.setContentType("text/javascript;charset=utf-8");
//        response.setCharacterEncoding("utf-8");
////        JSONArray jsonArray = new JSONArray(categoryService.list());
//
//        String jsonString = JSONArray.toJSONString(categoryService.list());
//        JSONArray jsonArray = JSONArray.parseArray(jsonString);
//
////        String a = this.getEncoding(((Asset) jsonArray.get(0)).getName());
//        return jsonArray.toString();
////        return "{\"rows\":[{\"c_money_type\":\" \",\"c_project_status\":\"1\",\"c_project_type\":\"\",\"en_project_money\":\"0\",\"en_project_remainingmoney\":\"0\",\"en_total_balance\":\"0\",\"l_att_serial\":\"49805\",\"l_linkman\":\"0\",\"l_manage_organization\":\"0\",\"l_total_record_count\":\"1\",\"numrow\":\"1\",\"vc_branch_caption\":\"\",\"vc_branch_id\":\" \",\"vc_company_name\":\" \",\"vc_email\":\" \",\"vc_link_tel\":\" \",\"vc_linkman\":\"吕若涛\",\"vc_manage_organ_codes\":\" \",\"vc_manager_codes\":\"333,1\",\"vc_money_type\":\" \",\"vc_organization_code\":\"2002\",\"vc_organization_industry\":\"1\",\"vc_panorama_info_\":\"PANORAMA,PROJECT_BD,vc_project_code,vc_project_name,22452\",\"vc_phone\":\" \",\"vc_project_code\":\"CSGSMC2\",\"vc_project_manager\":\" \",\"vc_project_manager_name\":\"\",\"vc_project_name\":\"测试公司名称2\",\"vc_project_shortname\":\"测试公司名称2\",\"vc_project_type\":\"\",\"vc_remark\":\" \"}],\"total\":\"1\"}";
//    }
//}
