from django.db import models

# Create your models here.
class Titles(models.Model):
    id = models.AutoField(primary_key=True)
    title = models.CharField(max_length=300)
    author = models.CharField(max_length=300)
    genre = models.CharField(max_length=200)
    characters = models.CharField(max_length=300)
    
class Contents(models.Model):
    id = models.AutoField(primary_key=True)
    line_index = models.IntegerField(default=0)
    contents = models.TextField()
    talker_identifier =  models.CharField(max_length=10)
    title = models.ForeignKey(Titles, on_delete=models.CASCADE)

class Talker(models.Model):
    id = models.AutoField(primary_key=True)
    line_index = models.IntegerField(default=0)
    contents = models.TextField()
    talker_identifier =  models.CharField(max_length=10)
    title = models.ForeignKey(Titles, on_delete=models.CASCADE)