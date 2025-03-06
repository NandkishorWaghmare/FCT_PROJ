package com.project.NBFC.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.NBFC.Model.contact;
import com.project.NBFC.Repo.ContactRepo;
import com.project.NBFC.Services.ContactService;

@Service
public class ContactDao implements ContactService{
	
	@Autowired
	ContactRepo cr;

	@Override
	public void savecontact(contact c1) {
		cr.save(c1);
		
	}

}
