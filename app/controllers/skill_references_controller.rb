class SkillReferencesController < ApplicationController
  # GET /skill_references
  # GET /skill_references.xml
  def index
    @skill_references = SkillReference.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @skill_references }
    end
  end

  # GET /skill_references/1
  # GET /skill_references/1.xml
  def show
    @skill_reference = SkillReference.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @skill_reference }
    end
  end

  # GET /skill_references/new
  # GET /skill_references/new.xml
  def new
    @skill_reference = SkillReference.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @skill_reference }
    end
  end

  # GET /skill_references/1/edit
  def edit
    @skill_reference = SkillReference.find(params[:id])
  end

  # POST /skill_references
  # POST /skill_references.xml
  def create
    @skill_reference = SkillReference.new(params[:skill_reference])

    respond_to do |format|
      if @skill_reference.save
        format.html { redirect_to(@skill_reference, :notice => 'Skill reference was successfully created.') }
        format.xml  { render :xml => @skill_reference, :status => :created, :location => @skill_reference }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @skill_reference.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /skill_references/1
  # PUT /skill_references/1.xml
  def update
    @skill_reference = SkillReference.find(params[:id])

    respond_to do |format|
      if @skill_reference.update_attributes(params[:skill_reference])
        format.html { redirect_to(@skill_reference, :notice => 'Skill reference was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @skill_reference.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /skill_references/1
  # DELETE /skill_references/1.xml
  def destroy
    @skill_reference = SkillReference.find(params[:id])
    @skill_reference.destroy

    respond_to do |format|
      format.html { redirect_to(skill_references_url) }
      format.xml  { head :ok }
    end
  end
end
