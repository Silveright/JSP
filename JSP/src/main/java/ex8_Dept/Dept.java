package ex8_Dept;

/*
	�ڹٺ�(JavaBean);�ڹ� Ŭ���� >> ���������� ���� �ǹ�
	�ڹٺ� �Ծ࿡ ���� �ۼ��� Ŭ�����̴�.
	���� ��� ȸ������, �Խ��� �� ���� ������ ����� �� ������ �����ϰ� �ִ� �ڹٺ� ��ü�� ����ϰ� �ȴ�.
	
	�ڹٺ��� �Ծ�
	1. �ʵ帶�� ������ get/set �޼��尡 �����ؾ� �Ѵ�.
	2. get �޼���� �Ķ���Ͱ� �������� �ʾƾ��Ѵ�.
	3. set �޼���� �ݵ�� �ϳ� �̻��� �Ķ���Ͱ� �����ؾ� �Ѵ�.
	4. ���� ������Ʈ�� �Ӽ��� �ݵ�� �б� �Ǵ� ���Ⱑ �����ؾ� �Ѵ�.
		��, �б� ������ ��� get �Ǵ� is �޼��常 ������ �� �ִ�.
	5. �����ڴ� �Ķ���Ͱ� ���� �⺻�����ڸ� �ݵ�� �ۼ��� �־�� �Ѵ�.
	6. �ʵ��� ���� �����ڴ� private�̰� �� set/get �޼����� ���� �����ڴ� public����
		���ǵǾ�� �ϸ� Ŭ������ ���� �����ڴ� public���� �����Ѵ�.
	
	*�ڹٺ� Ŭ������ �����͸� �����ϴ� �ʵ�, �����͸� �о�� �� ���Ǵ�
	 �޼���(getter�޼���), ���� ������ �� ���Ǵ� �޼���(setter�޼���)�� �����ȴ�.
	
	*�޼��� �̸��� ����ؼ� ������Ƽ(property)�� �̸��� �����ϰ� �ȴ�.
	 ���� ��� ������Ƽ�� �̸��� name�̰� ���� Ÿ���� int�� ��� ������Ƽ�� ���õ� �޼����� �̸��� ������ ���� ������
	 public void setName(int value){}'
	 public int getName(){};
	 
	 setName()�� getName()�� ���� �����Ǵ� �����͸� ������Ƽ(property)��� �θ���.
	 ������Ƽ�� Ÿ���� boolean�� ��� get��� is�� ���� �� �ִ�.
	 
	 ��, ������Ƽ�� ���� �����ϴ� �޼����� ��� ������Ƽ�� �̸� �� ù ���ڸ� �빮�ڷ� ��ȯ�� ���ڿ� �տ� set�� ���̰�
	 ������Ƽ�� ���� �о���� �޼����� ��� ������Ƽ�� �̸� �� ù ���ڸ� �빮�ڷ� ��ȯ�� ���ڿ� �տ� get�� ���δ�.
	 ������Ƽ�� �̸��� �ʵ��� �̸��� ���� �ʾƵ� �ȴ�.
	 
	 ���� ��� name ������Ƽ�� ���� ������ �����ϴ� �ʵ尡 _name�� ���
	 
	 	private String _name;
	 	
	 	public String getName(){
	 		return _name;
	 	}
	 	
	 	public void setName(String name){
	 		_name=name;
	 	}
	 	
	 	***������ ��(DataBean) Ŭ���� �ۼ� ***
	 	�������� �������� ������ ���̶�� �ϳ��� ��ü�� �����ϰ� �ǰ�
	 	�� ��ü�� �����ϸ� �������� �ϳ��� ������ �ʿ䰡 ������
	 	�Ѳ����� ��� ������ ���޵ȴ�.
	 	�̷� Ŭ������ DTO(Data Transfer Object), VO(value Object)��� �Ѵ�.
	 	DB���� ������� �÷���� �����ϰ� ������Ƽ���� �����Ѵ�.
*/
public class Dept {
	private int deptno;
	private String dname;
	private String loc;
	
	public Dept() {
		
	}
	
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	
}
