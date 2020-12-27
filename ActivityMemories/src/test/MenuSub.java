package test;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.*;

public class MenuSub extends JFrame implements ActionListener {
	JMenuBar jb;
	JMenu m1, m2, m3, subMenu;
	JMenuItem t1, t2, t3, t4, t5, t6, t7, sub1, sub2;
	
	public MenuSub() {
		setSize(400,500);
		setTitle("타이틀이라네");
		
		Container c = getContentPane();
		c.setLayout(new FlowLayout());
		
		ImageIcon icon = new ImageIcon("img01.PNG");
		JLabel la = new JLabel("이미지넣기 짜잔.", icon, 
				SwingConstants.CENTER);
		
		ButtonGroup group = new ButtonGroup();
		
		JButton j1 = new JButton("버튼1");
		JButton j2 = new JButton("버튼2");
		JButton j3 = new JButton(icon);
		
		JRadioButton r1 = new JRadioButton("남성");
		JRadioButton r2 = new JRadioButton("여성");
		group.add(r1);
		group.add(r2);
		
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		c.add(j1);
		c.add(j2);
		c.add(j3);
		c.add(r1);
		c.add(r2);
		//c.add(la);
		j1.addActionListener(this);
		
		jb = new JMenuBar();
		m1 = new JMenu("파일");
		t1 = new JMenuItem("새로만들기");
		t2 = new JMenuItem("열기");
		subMenu = new JMenu("저장");
		sub1 = new JMenuItem("다른이름으로 저장");
		sub2 = new JMenuItem("그대로 저장");
		m2 = new JMenu("편집");
		t4 = new JMenuItem("복사");
		t5 = new JMenuItem("붙혀넣기");
		t6 = new JMenuItem("잘라내기");
		m3 = new JMenu("도움말");
		t7 = new JMenuItem("정보확인");
		
		jb.add(m1);
		jb.add(m2);
		jb.add(m3);
		m1.add(t1);
		m1.add(t2);
		m1.add(subMenu);
		m2.add(t4);
		m2.add(t5);
		m2.add(t6);
		m3.add(t7);
		subMenu.add(sub1);
		subMenu.add(sub2);
		
		setJMenuBar(jb);
		setVisible(true);
	}

	@Override
	public void actionPerformed(ActionEvent arg0) {
		// TODO Auto-generated method stub
		
	}
}
