from django.shortcuts import render
from rest_framework.views import APIView

# Create your views here.
class FileUpload(APIView):
    def post(self,request):
        cv_files = request.FILES.getlist('resumes')
        jd  = request.data.get('jd')