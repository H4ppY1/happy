package com.h4ppY.happy.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.h4ppY.happy.pojo.Asset;
import com.h4ppY.happy.service.AssetService;
import jdk.nashorn.internal.runtime.JSONFunctions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("")
public class AssetController implements BaseController {

    @Autowired
    AssetService assetService;

    @RequestMapping("assetSearch")
    @ResponseBody
    public String foreAssetManage (Model model,HttpServletResponse response){
//        model.addAttribute("assetList", assetService.list());

        response.setContentType("text/javascript;charset=utf-8");
        response.setCharacterEncoding("utf-8");
        JSONArray jsonArray = new JSONArray(assetService.list());
//        String a = this.getEncoding(((Asset) jsonArray.get(0)).getName());
        return jsonArray.toString();
//        return "{\"rows\":[{\"c_money_type\":\" \",\"c_project_status\":\"1\",\"c_project_type\":\"\",\"en_project_money\":\"0\",\"en_project_remainingmoney\":\"0\",\"en_total_balance\":\"0\",\"l_att_serial\":\"49805\",\"l_linkman\":\"0\",\"l_manage_organization\":\"0\",\"l_total_record_count\":\"1\",\"numrow\":\"1\",\"vc_branch_caption\":\"\",\"vc_branch_id\":\" \",\"vc_company_name\":\" \",\"vc_email\":\" \",\"vc_link_tel\":\" \",\"vc_linkman\":\"吕若涛\",\"vc_manage_organ_codes\":\" \",\"vc_manager_codes\":\"333,1\",\"vc_money_type\":\" \",\"vc_organization_code\":\"2002\",\"vc_organization_industry\":\"1\",\"vc_panorama_info_\":\"PANORAMA,PROJECT_BD,vc_project_code,vc_project_name,22452\",\"vc_phone\":\" \",\"vc_project_code\":\"CSGSMC2\",\"vc_project_manager\":\" \",\"vc_project_manager_name\":\"\",\"vc_project_name\":\"测试公司名称2\",\"vc_project_shortname\":\"测试公司名称2\",\"vc_project_type\":\"\",\"vc_remark\":\" \"}],\"total\":\"1\"}";
    }

    @Override
    public String toJsonString() {
//        List<Asset> assetServiceList = assetService.list();
//        String jsonString = "";
//
//        for(Asset asset: assetServiceList){
//            JSONObject assetJson = (JSONObject) JSONObject.toJSON(asset);
//            JSONArray
//        }
//        return jsonString;
        return "";
    }
    public String getEncoding(String str) {
        String encode = "GB2312";
        try {
            if (str.equals(new String(str.getBytes(encode), encode))) {      //判断是不是GB2312
                String s = encode;
                return s;      //是的话，返回“GB2312“，以下代码同理
            }
        } catch (Exception exception) {
        }
        encode = "ISO-8859-1";
        try {
            if (str.equals(new String(str.getBytes(encode), encode))) {      //判断是不是ISO-8859-1
                String s1 = encode;
                return s1;
            }
        } catch (Exception exception1) {
        }
        encode = "UTF-8";
        try {
            if (str.equals(new String(str.getBytes(encode), encode))) {   //判断是不是UTF-8
                String s2 = encode;
                return s2;
            }
        } catch (Exception exception2) {
        }
        encode = "GBK";
        try {
            if (str.equals(new String(str.getBytes(encode), encode))) {      //判断是不是GBK
                String s3 = encode;
                return s3;
            }
        } catch (Exception exception3) {
        }
        return "";        //如果都不是，说明输入的内容不属于常见的编码格式。
    }
}
