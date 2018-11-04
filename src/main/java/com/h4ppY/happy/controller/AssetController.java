//package com.h4ppY.happy.controller;
//
//import com.alibaba.fastjson.JSON;
//import com.alibaba.fastjson.JSONArray;
//import com.alibaba.fastjson.JSONObject;
//import com.h4ppY.happy.pojo.Asset;
//import com.h4ppY.happy.service.AssetService;
//import com.h4ppY.happy.util.ExcelUtil;
//
//import jdk.nashorn.internal.runtime.JSONFunctions;
//
//import org.apache.poi.hssf.usermodel.HSSFWorkbook;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.HttpRequest;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.ResponseBody;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import java.io.OutputStream;
//import java.util.ArrayList;
//import java.util.List;
//
//@Controller
//@RequestMapping("")
//public class AssetController {
//
//    @Autowired
//    AssetService assetService;
//
//    @RequestMapping("assetSearch")
//    @ResponseBody
//    public List<Asset> foreAssetManage (Model model,HttpServletResponse response){
//    	return assetService.list();
//    }
//
//    @RequestMapping("assetSearch.json")
//    @ResponseBody
//    public String foreAssetJson (Model model,HttpServletResponse response){
//		List<Asset> hList = assetService.list();
//		return JSON.toJSONString(hList);
//    }
//
//    @RequestMapping("assetSearch.xls")
//    @ResponseBody
//    public void foreAssetXls (Model model,HttpServletResponse response){
//		List<Asset> hList = assetService.list();
//		Asset asset = null;
//		String []sheetTitle = {"order","name"};
//		String fileName = "tryExcel.xls";
//		String sheetName = "abc";
//		String [][]content = new String[hList.size()][sheetTitle.length];
//		for (int i = 0; i < content.length; i++) {
//			asset = hList.get(i);
//	        content[i][0] = asset.getId().toString();
//	        content[i][1] = asset.getName();
//	    }
//
//		HSSFWorkbook wb = ExcelUtil.getHSSFWorkbook(sheetName, sheetTitle, content);
//
//
//		try {
//			this.setResponseHeader(response, fileName);
//			OutputStream os = response.getOutputStream();
//			wb.write(os);
//			os.flush();
//			os.close();
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//    }
//    //发送响应流方法
//    public void setResponseHeader(HttpServletResponse response, String fileName) {
//        try {
//            try {
//                fileName = new String(fileName.getBytes(),"ISO8859-1");
//            } catch (Exception e) {
//                // TODO Auto-generated catch block
//                e.printStackTrace();
//            }
//            response.setContentType("application/octet-stream;charset=ISO8859-1");
//            response.setHeader("Content-Disposition", "attachment;filename="+ fileName);
//            response.addHeader("Pargam", "no-cache");
//            response.addHeader("Cache-Control", "no-cache");
//        } catch (Exception ex) {
//            ex.printStackTrace();
//        }
//    }
//}
