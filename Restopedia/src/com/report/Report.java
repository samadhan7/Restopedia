package com.report;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Iterator;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Font;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.restopedia.KotBillGen;

import sessionconfiq.HibernateUtil;

public class Report {

	public static void printSalesReport() {
		
		String[] headers = new String[]{ "SL", "KOT No.", "Table No", "Captain Name","Date","Time","Total","Tax","Grand Total" };
        ArrayList<ArrayList<String>> contentHolder=new ArrayList<ArrayList<String>>();

        // Create a new document.
        Document document = new Document(PageSize.LETTER.rotate());

        try {
            
            PdfWriter.getInstance(document,
                    new FileOutputStream(new File("E:/File/SalesReport.pdf")));
            document.open();

           
            Font fontHeader = new Font(Font.FontFamily.TIMES_ROMAN, 12, Font.BOLD);
            Font fontRow = new Font(Font.FontFamily.TIMES_ROMAN, 10, Font.NORMAL);

            //creating header
            PdfPTable table = new PdfPTable(headers.length);
            for (String header : headers) {
                PdfPCell cell = new PdfPCell();
                cell.setGrayFill(0.9f);
                cell.setPhrase(new Phrase(header.toUpperCase(), fontHeader));
                table.addCell(cell);
            }
           
            table.completeRow();

            //fetching value from table
            HibernateUtil.createsession();
            Iterator<KotBillGen> itkotbillgen=HibernateUtil.getBillRecord();
            int count=0;
			float totalamount=0f;
			float totaltaxamount=0f;
			float grandtaotalamount=0f;
			
			while(itkotbillgen.hasNext())
			{
				
				ArrayList<String>contents=new ArrayList<String>();
		        
				KotBillGen kotbillgen=(KotBillGen)itkotbillgen.next();
				
				count++;
				totalamount=totalamount+ kotbillgen.getTotal();
				totaltaxamount=totaltaxamount+kotbillgen.getTax();
				grandtaotalamount=grandtaotalamount+kotbillgen.getGtotal();
			
				contents.add(Integer.toString(count));
				contents.add(Integer.toString(kotbillgen.getKotno()));
				
				contents.add(kotbillgen.getTableno());
				contents.add(kotbillgen.getCaptain());
				contents.add(kotbillgen.getDate());
				contents.add(kotbillgen.getTime());
				contents.add(Float.toString(kotbillgen.getTotal()));
				contents.add(Float.toString(kotbillgen.getTax()));
				contents.add(Float.toString(kotbillgen.getGtotal()));
				
				contentHolder.add(contents);
			}
			HibernateUtil.destroysession();
            
            for (ArrayList<String> row : contentHolder) {
                for (String data : row) {
                    Phrase phrase = new Phrase(data, fontRow);
                    table.addCell(new PdfPCell(phrase));
                }
                table.completeRow();
            }
            for(int i=0;i<5;i++) {
            	 Phrase phrase = new Phrase("", fontRow);
                 table.addCell(new PdfPCell(phrase));
            }
            
            Phrase phrase = new Phrase("Total :", fontRow);
            table.addCell(new PdfPCell(phrase));
          
            Phrase phrase1 = new Phrase(Float.toString(totalamount), fontRow);
            table.addCell(new PdfPCell(phrase1));
            Phrase phrase2 = new Phrase(Float.toString(totaltaxamount), fontRow);
            table.addCell(new PdfPCell(phrase2));
            Phrase phrase3 = new Phrase(Float.toString(grandtaotalamount), fontRow);
            table.addCell(new PdfPCell(phrase3));
            
            table.completeRow();
            
            document.addTitle("Sales Report");
            document.add(table);
        } catch (DocumentException | FileNotFoundException e) {
            e.printStackTrace();
        } finally {
            document.close();
        }
		
	}
	
	
	
	
	
}
