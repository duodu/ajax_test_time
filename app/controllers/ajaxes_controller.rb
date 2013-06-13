class AjaxesController < ApplicationController
  def now
    respond_to do |format|
      format.html { render :layout => false }
      format.xml { render :xml => @ajaxes }
    end
  end
  def time
    respond_to do |format|
      format.html
      format.xml  { render :xml => @ajaxes }
    end
  end
  def source
    respond_to do |format|
      format.html
      format.xml  { render :xml => @ajaxes }
    end
  end
  def messages
    #session[:num] = nil
    msgs = []
    msgs << "<div><span class=name>ITZCN</span>&nbsp;&nbsp;<span class=time>12:5:02</span></div><div class=msg>Hello !</div>"
    msgs << "<div><span class=name>puser1</span>&nbsp;&nbsp;<span class=time>12:25:32</span></div><div class=msg>Hello ,ITZCN<br>Good morning!</div>"
    msgs << "<div><span class=name>ITZCN</span>&nbsp;&nbsp;<span class=time>12:26:13</span></div><div class=msg>Good morning!</div>"
    msgs << "<div><span class=name>puser1</span>&nbsp;&nbsp;<span class=time>12:27:02</span></div><div class=msg>Ask one question</div>"

    length = session[:num].to_i
    @messages = msgs[0, length]
    session[:num] = length + 1

    respond_to do |format|
      format.html { render :layout => false }
      format.xml  { render :xml => @ajaxes }
    end
  end
  def chat
    respond_to do |format|
      format.html
      format.xml  { render :xml => @ajaxes }
    end
  end
  def login
    username=request["user"]["name"]
    password=request["user"]["password"]

    @username = username
    @rule = "VIP"

    respond_to do |format|
      format.html { render :layout => false }
      format.xml  { render :xml => @ajaxes }
    end
  end
  def itzcn
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ajaxes }
    end
  end
end
