class RetweetsController < ApplicationController
  # GET /retweets
  # GET /retweets.json
  def index
    @retweets = Retweet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @retweets }
    end
  end

  # GET /retweets/1
  # GET /retweets/1.json
  def show
    @retweet = Retweet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @retweet }
    end
  end

  # GET /retweets/new
  # GET /retweets/new.json
  def new
    @retweet = Retweet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @retweet }
    end
  end

  # GET /retweets/1/edit
  def edit
    @retweet = Retweet.find(params[:id])
  end

  # POST /retweets
  # POST /retweets.json
  def create
    @retweet = Retweet.new(params[:retweet])

    respond_to do |format|
      if @retweet.save
        format.html { redirect_to @retweet, notice: 'Retweet was successfully created.' }
        format.json { render json: @retweet, status: :created, location: @retweet }
      else
        format.html { render action: "new" }
        format.json { render json: @retweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /retweets/1
  # PUT /retweets/1.json
  def update
    @retweet = Retweet.find(params[:id])

    respond_to do |format|
      if @retweet.update_attributes(params[:retweet])
        format.html { redirect_to @retweet, notice: 'Retweet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @retweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /retweets/1
  # DELETE /retweets/1.json
  def destroy
    @retweet = Retweet.find(params[:id])
    @retweet.destroy

    respond_to do |format|
      format.html { redirect_to retweets_url }
      format.json { head :no_content }
    end
  end
end
