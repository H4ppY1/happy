package com.h4ppY.happy.util;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

public class ExcelUtil {
	public static HSSFWorkbook getHSSFWorkbook(String sheetName, String []sheetTitle, String [][]sheetValue) {
		HSSFWorkbook workbook = new HSSFWorkbook();
		HSSFSheet sheet = workbook.createSheet(sheetName); // 创建sheet页
		HSSFRow row = sheet.createRow(0);//创建表头行
		HSSFCell cell = null;
		//填入标题
		for(int i = 0; i < sheetTitle.length; i++) {
			cell = row.createCell(i);
			cell.setCellValue(sheetTitle[i]);
		}
		//填入内容
		for(int i = 0; i < sheetValue.length; i++) {
			row = sheet.createRow(i+1);
			for(int j = 0; j < sheetValue[i].length; j++) {
				cell = row.createCell(j);
				cell.setCellValue(sheetValue[i][j]);
			}
		}
		return workbook;
	}
}
