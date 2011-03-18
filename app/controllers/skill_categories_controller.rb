class SkillCategoriesController < ApplicationController
  # GET /skill_categories
  # GET /skill_categories.xml
  def index
    @skill_categories = SkillCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @skill_categories }
    end
  end

  # GET /skill_categories/1
  # GET /skill_categories/1.xml
  def show
    @skill_category = SkillCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @skill_category }
    end
  end

  # GET /skill_categories/new
  # GET /skill_categories/new.xml
  def new
    @skill_category = SkillCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @skill_category }
    end
  end

  # GET /skill_categories/1/edit
  def edit
    @skill_category = SkillCategory.find(params[:id])
  end

  # POST /skill_categories
  # POST /skill_categories.xml
  def create
    @skill_category = SkillCategory.new(params[:skill_category])

    respond_to do |format|
      if @skill_category.save
        format.html { redirect_to(@skill_category, :notice => 'Skill category was successfully created.') }
        format.xml  { render :xml => @skill_category, :status => :created, :location => @skill_category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @skill_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /skill_categories/1
  # PUT /skill_categories/1.xml
  def update
    @skill_category = SkillCategory.find(params[:id])

    respond_to do |format|
      if @skill_category.update_attributes(params[:skill_category])
        format.html { redirect_to(@skill_category, :notice => 'Skill category was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @skill_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /skill_categories/1
  # DELETE /skill_categories/1.xml
  def destroy
    @skill_category = SkillCategory.find(params[:id])
    @skill_category.destroy

    respond_to do |format|
      format.html { redirect_to(skill_categories_url) }
      format.xml  { head :ok }
    end
  end
end
