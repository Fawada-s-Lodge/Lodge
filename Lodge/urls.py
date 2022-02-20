from django.urls import path
from . import views
from django.contrib.staticfiles.urls import staticfiles_urlpatterns

urlpatterns = [
    path("", views.index, name="index"),
    path("checkin", views.checkin, name="checkin"),
    path("checked_in", views.checked_in, name="checked_in"),
    path("checked_out", views.checked_out, name="checked_out"),
    path("book_room", views.book_room, name="book_room"),
    path("room_booked", views.room_booked, name="room_booked"),
    path("check_availability", views.check_availability, name="check_availability"),
    path("home/", views.home, name="home"),
    path("about/", views.about, name="about"),
    path("contact/", views.contact, name="contact"),
    path("dashboard/", views.dashboard, name="dashboard"),
    path("dashboard2/", views.dashboard2, name="dashboard2")
]