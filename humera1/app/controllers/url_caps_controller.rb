class UrlCapsController < ApplicationController
#  before_action :set_url_cap, only: [:show, :edit, :update, :destroy]

skip_before_action  :verify_authenticity_token

  # GET /url_caps
  # GET /url_caps.json
  def index
    @url_caps = Myurl.all
render json: {status: 'SUCCESS', message: 'Loaded all posts', data:@url_caps }, status: :o
  end

  # GET /url_caps/1
  # GET /url_caps/1.json
  def show
	puts "----------------------------------------" + params[:id]
	@myurl1 = Myurl.find(params[:id])
	@Myurllinks = Myurllink.where(myurl_id:@myurl1.id.to_s)
	@response = { :url => @myurl1, :url_links => @Myurllinks }
	render json: {status: 'SUCCESS', message: 'Loaded all posts', data:@response }, status: :o
  end

  # GET /url_caps/new
  def new
    @url_cap = UrlCap.new
  end

  # GET /url_caps/1/edit
  def edit
  end

  # POST /url_caps
  # POST /url_caps.json
  def create
#    @url_cap = UrlCap.new(url_cap_params)

puts "the params are -------------------------" + params[:url]

var1 = params[:url]

		if !Myurl.exists?(title:var1) then
		page = Nokogiri::HTML(open(var1))

		myurl1 = Myurl.create(title:var1)

		h1_array = page.css("h1")
		h1_array.each{|h1link|
			link1 = Myurllink.create(myurl_id:myurl1.id, link:h1link )
		}

		h2_array = page.css("h2")
		h2_array.each{|h2link|
			link1 = Myurllink.create(myurl_id:myurl1.id, link:h2link )
		}

		h3_array = page.css("h3")
		h3_array.each{|h3link|
			link1 = Myurllink.create(myurl_id:myurl1.id, link:h3link )
		}

		news_links = page.css("a")

		news_links.each{|alink| 
			#puts link['href']
			link1 = Myurllink.create(myurl_id:myurl1.id, link:alink['href'] )
		}
	end

#    respond_to do |format|
#      if @url_cap.save
#        format.html { redirect_to @url_cap, notice: 'Url cap was successfully created.' }
#        format.json { render :show, status: :created, location: @url_cap }
#      else
#        format.html { render :new }
#        format.json { render json: @url_cap.errors, status: :unprocessable_entity }
#      end
#    end
  end

  # PATCH/PUT /url_caps/1
  # PATCH/PUT /url_caps/1.json
  def update
    respond_to do |format|
      if @url_cap.update(url_cap_params)
        format.html { redirect_to @url_cap, notice: 'Url cap was successfully updated.' }
        format.json { render :show, status: :ok, location: @url_cap }
      else
        format.html { render :edit }
        format.json { render json: @url_cap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /url_caps/1
  # DELETE /url_caps/1.json
  def destroy
    @url_cap.destroy
    respond_to do |format|
      format.html { redirect_to url_caps_url, notice: 'Url cap was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_url_cap
      @url_cap = UrlCap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def url_cap_params
      params.fetch(:url_cap, {})
    end
end
