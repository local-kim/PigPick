package data.service;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import data.dto.ReviewDto;
import data.mapper.ReviewMapperInter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewService implements ReviewServiceInter {
	
	@Autowired
	private ReviewMapperInter mapper;

	@Override
	public int getMaxNum() {
		// TODO Auto-generated method stub
		return mapper.getMaxNum();
	}

	@Override
	public List<ReviewDto> getList(int start, int perpage) {
		// TODO Auto-generated method stub
		Map<String, Integer> map=new HashMap<>();
		map.put("start", start);
		map.put("perpage", perpage);
		return mapper.getList(map); 
		
	}

	@Override
	public ReviewDto getData(int num) {
		// TODO Auto-generated method stub
		return mapper.getData(num);
	}

	@Override
	public void insertReview(ReviewDto dto) {
		// TODO Auto-generated method stub
//		   int reg=dto.getReg();
//		   int restep=dto.getRestep();
//		   int relevel=dto.getRelevel();
		   int num=dto.getNum();
		   
		   //새글인 경우
		   if(num==0)
		   {
			   //새글인경우
//			   reg=this.getMaxNum()+1;
//			   restep=0;
//			   relevel=0;
//		   } else {
			   //답글인경우
			   //기존 restep보다 큰값은 모두 1증가
//			   this.updateReStep(reg, restep);
			   //기존 값들보다 1증가
//			   restep++;
//			   relevel++;
		   }
		   
//		   dto.setReg(reg);
//		   dto.setRestep(restep);
//		   dto.setRelevel(relevel);
		   //insert
		   mapper.insertReview(dto);
		   }    
		
	@Override
	public void updateReview(ReviewDto dto) {
		// TODO Auto-generated method stub
		mapper.updateReview(dto);
		
	}

	@Override
	public void deleteReview(int num) {
		// TODO Auto-generated method stub
		mapper.deleteReview(num);
		
	}

	@Override
	public void updateReStep(int reg, int restep) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int getTotalCount() {
		// TODO Auto-generated method stub
		return mapper.getTotalCount();
	}
	

}
