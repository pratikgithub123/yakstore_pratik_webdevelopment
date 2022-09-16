
# from django.contrib.auth.models import User
# from django import setup
# from django.http import response
from django.test.testcases import TestCase
# from django.urls import reverse
from django import *

class TestViews(TestCase):

    def setUp(self):

        self.client = Client()
        self.orders_url = reverse('orders')
        \
        self.user_url = reverse('userprofile')

        self.login_url = reverse('login')
        

    def test_login_GET(self):

        response = self.client.get(self.login_url)       

        self.assertEqual(response.status_code, 200) # Assert that we are getting success response on GET requests for this view

        self.assertTemplateUsed(response, 'app/login.html') 



    def test_userprofile_GET(self):

        response = self.client.get(self.user_url)



        self.assertEqual(response.status_code, 302) #may return 302 code if currently not logged in or logged in as user (redirected)

        


    
from http import client
from venv import create
from django.test import SimpleTestCase, TestCase, Client
from django.urls import reverse, resolve
# from app.views import *




class testViews(TestCase):

    # testing delete function
    def test_delete_intro(self):

        intro = Customer.objects.create(name= "Customer",zipcode="1234")
        # print(intro.intro_id)
        client = Client()
        response = client.delete(reverse('deleteaddress', args='2'))
        self.assertEquals(response.status_code,302)

    #testing delete function
    def test_delete_notice(self):

        notice = Customer.objects.create(
            name = "Exam",
            email = "notice@gmail.com",
            city = "ktm",
            zipcode="1234",
        )

        # print(notice.notice_id)

        client = Client()
        response = client.delete(reverse('updateaddress', args='2'))
        self.assertEquals(response.status_code,302)



# --------------------------------------Urls--------------------------------------------






    
    



   

    
    





