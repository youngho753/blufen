package item;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ItemDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public ItemDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/blufen";
			String dbID = "root";
			String dbPassword = "dudgh1101";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public int upload(String itemTitle, String fileName,String fileRealName,String item1Day, String item30Day, String itemSell, int itemLentsell) {
		String uSQL = "INSERT INTO ITEM VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		String sSQL = "SELECT * FROM ITEM order by itemNo desc limit 1";
		try {
		//	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			int itemNo = 1;
			pstmt = conn.prepareStatement(sSQL);
			rs = pstmt.executeQuery();
			
			Item item = new Item();
			while(rs.next()) {
			item.setItemNo(rs.getInt(13));
			itemNo = item.getItemNo();
			}
			
			pstmt = conn.prepareStatement(uSQL);
			pstmt.setString(1, itemTitle);
			pstmt.setString(2, fileName);
			pstmt.setString(3, fileRealName);
			pstmt.setString(4, item1Day);
			pstmt.setString(5, item30Day);
			pstmt.setString(6, itemSell);
			pstmt.setInt(7, itemLentsell);
			pstmt.setInt(8, '1');
			pstmt.setString(9, "sdf");
			pstmt.setString(10, "sdf");
			pstmt.setString(11, "1");
			pstmt.setString(12, "1");
			pstmt.setInt(13, itemNo+1);
			
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	public ArrayList<Item> getList(){
		String SQL = "SELECT * FROM ITEM";
		ArrayList<Item> list = new ArrayList<Item>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);	
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				Item item = new Item(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getInt(7),rs.getInt(8),rs.getString(9),rs.getString(10),rs.getString(11),rs.getString(12),rs.getInt(13));	
				list.add(item);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
public ArrayList<Item> getSearchItem(String title){
		
		//리턴타입을 설정
		ArrayList<Item> arrayList= new ArrayList<>();
		Item item = null;
		
		
		try {
			String sql = "select * from item where itemTitle = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title);
			//쿼리 실행후 결과를 result타입으로 리턴
			rs = pstmt.executeQuery();
			while(rs.next()) {
				item = new Item();
				item.setItemTitle(rs.getString(1));
				item.setItemName(rs.getString(2));
				item.setItemRealName(rs.getString(3));
				item.setItem1Day(rs.getString(4));
				item.setItem30Day(rs.getString(5));
				item.setItemSell(rs.getString(6));
				item.setItemLentsell(rs.getInt(7));
				item.setItemAvailable(rs.getInt(8));
				item.setItemUser(rs.getString(9));
				item.setItemDate(rs.getString(10));
				item.setItemInfo(rs.getString(11));
				item.setItemCategory(rs.getString(12));
				item.setItemNo(rs.getInt(13));
				arrayList.add(item);
				}
			conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return arrayList;
	
	}
	public Item getOneItem(int no) {
		Item item = new Item();
	
		try {
			String sql = "select * from item where itemNo = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				item.setItemTitle(rs.getString(1));
				item.setItemName(rs.getString(2));
				item.setItemRealName(rs.getString(3));
				item.setItem1Day(rs.getString(4));
				item.setItem30Day(rs.getString(5));
				item.setItemSell(rs.getString(6));
				item.setItemLentsell(rs.getInt(7));
				item.setItemAvailable(rs.getInt(8));
				item.setItemUser(rs.getString(9));
				item.setItemDate(rs.getString(10));
				item.setItemInfo(rs.getString(11));
				item.setItemCategory(rs.getString(12));
				item.setItemNo(rs.getInt(13));

			}
			conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return item;
	}
}
