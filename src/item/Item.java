package item;
public class Item {
	private String itemTitle;
	private String itemName;
	private String itemRealName;
	private String item1Day;
	private String item30Day;
	private String itemSell;
	private int itemLentsell;
	private int itemAvailable;
	private String itemUser;
	private String itemDate;
	private String itemInfo;
	private String itemCategory;
	private int itemNo;
	
	public Item(String itemTitle, String itemName, String itemRealName, String item1Day, String item30Day,
			String itemSell, int itemLentsell, int itemAvailable, String itemUser, String itemDate, String itemInfo,
			String itemCategory, int itemNo) {
		super();
		this.itemTitle = itemTitle;
		this.itemName = itemName;
		this.itemRealName = itemRealName;
		this.item1Day = item1Day;
		this.item30Day = item30Day;
		this.itemSell = itemSell;
		this.itemLentsell = itemLentsell;
		this.itemAvailable = itemAvailable;
		this.itemUser = itemUser;
		this.itemDate = itemDate;
		this.itemInfo = itemInfo;
		this.itemCategory = itemCategory;
		this.itemNo = itemNo;
	}
	
	
	public String getItemTitle() {
		return itemTitle;
	}
	public void setItemTitle(String itemTitle) {
		this.itemTitle = itemTitle;
	}
	
	public String getItemUser() {
		return itemUser;
	}
	public void setItemUser(String itemUser) {
		this.itemUser = itemUser;
	}
	public String getItemDate() {
		return itemDate;
	}
	public void setItemDate(String itemDate) {
		this.itemDate = itemDate;
	}
	public String getItemInfo() {
		return itemInfo;
	}
	public void setItemInfo(String itemInfo) {
		this.itemInfo = itemInfo;
	}
	public String getItemCategory() {
		return itemCategory;
	}
	public void setItemCategory(String itemCategory) {
		this.itemCategory = itemCategory;
	}
	public int getItemNo() {
		return itemNo;
	}
	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}
	public Item() {
		
	}

	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getItemRealName() {
		return itemRealName;
	}
	public void setItemRealName(String itemRealName) {
		this.itemRealName = itemRealName;
	}
	public String getItem1Day() {
		return item1Day;
	}
	public void setItem1Day(String item1Day) {
		this.item1Day = item1Day;
	}
	public String getItem30Day() {
		return item30Day;
	}
	public void setItem30Day(String item30Day) {
		this.item30Day = item30Day;
	}
	public String getItemSell() {
		return itemSell;
	}
	public void setItemSell(String itemSell) {
		this.itemSell = itemSell;
	}
	public int getItemLentsell() {
		return itemLentsell;
	}
	public void setItemLentsell(int itemLentsell) {
		this.itemLentsell = itemLentsell;
	}
	public int getItemAvailable() {
		return itemAvailable;
	}
	public void setItemAvailable(int itemAvailable) {
		this.itemAvailable = itemAvailable;
	}

}