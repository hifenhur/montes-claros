class FilmesController < InheritedResources::Base
	def show
		@filme = Filme.find(params[:id])
    @ingressos = Ingresso.all
    @filmes = Filme.order("presenca DESC").limit(6)
    @usuarios = Usuario.all
    @criar = true

    @filme.usuarios.each do |u|
      if (u.ip == request.remote_ip) && (u.filme_id == @filme.id)
        @criar = false
      end
    
    end
    

    if @criar
      @usuario = @filme.usuarios.create(params[:usuario])
      @usuario.ip = request.remote_ip
      @usuario.save
    end
    
	end

  def add_count
    @filme = Filme.find(params[:id])
    @ip = request.remote_ip
    @filme.usuarios.each do |u|
      if (u.ip = @ip) && (!u.votou)
        @filme.presenca += 1
        u.votou = true
        @filme.save
        u.save        
      end
    end
    respond_to do |f|
      f.js
    end
    
    

  end
  
  def create
    @filme = Filme.new(params[:filme])
    @filme.presenca = 0
    respond_to do |format|
      if @filme.save
        format.html { redirect_to @filme, notice: 'Filme was successfully created.' }
        format.json { render json: @filme, status: :created, location: @filme }
      else
        format.html { render action: "new" }
        format.json { render json: @filme.errors, status: :unprocessable_entity }
      end
    end
  end
  


	def update
    @filme = Filme.find(params[:id])

    respond_to do |format|
      if @filme.update_attributes(params[:filme])
        format.html { redirect_to edit_admin_filme_path(@filme), notice: 'Filme was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @filme.errors, status: :unprocessable_entity }
      end
    end
  end
end
