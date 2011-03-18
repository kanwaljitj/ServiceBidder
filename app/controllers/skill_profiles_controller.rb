class SkillProfilesController < ApplicationController
  # GET /skill_profiles
  # GET /skill_profiles.xml
  def index
    @skill_profiles = SkillProfile.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @skill_profiles }
    end
  end

  # GET /skill_profiles/1
  # GET /skill_profiles/1.xml
  def show
    @skill_profile = SkillProfile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @skill_profile }
    end
  end

  # GET /skill_profiles/new
  # GET /skill_profiles/new.xml
  def new
    @skill_profile = SkillProfile.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @skill_profile }
    end
  end

  # GET /skill_profiles/1/edit
  def edit
    @skill_profile = SkillProfile.find(params[:id])
  end

  # POST /skill_profiles
  # POST /skill_profiles.xml
  def create
    @skill_profile = SkillProfile.new(params[:skill_profile])

    respond_to do |format|
      if @skill_profile.save
        format.html { redirect_to(@skill_profile, :notice => 'Skill profile was successfully created.') }
        format.xml  { render :xml => @skill_profile, :status => :created, :location => @skill_profile }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @skill_profile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /skill_profiles/1
  # PUT /skill_profiles/1.xml
  def update
    @skill_profile = SkillProfile.find(params[:id])

    respond_to do |format|
      if @skill_profile.update_attributes(params[:skill_profile])
        format.html { redirect_to(@skill_profile, :notice => 'Skill profile was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @skill_profile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /skill_profiles/1
  # DELETE /skill_profiles/1.xml
  def destroy
    @skill_profile = SkillProfile.find(params[:id])
    @skill_profile.destroy

    respond_to do |format|
      format.html { redirect_to(skill_profiles_url) }
      format.xml  { head :ok }
    end
  end
end
