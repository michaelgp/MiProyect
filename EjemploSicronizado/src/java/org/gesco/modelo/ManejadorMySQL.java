package org.gesco.modelo;

import java.sql.*;
import java.util.ArrayList;



/**
 *
 * @author Emmanuel Vidal
 */
public class ManejadorMySQL {
        
        private static ManejadorMySQL manejador;
    	private Connection con;
	private PreparedStatement pstm;
	private ResultSet rs;
        
        private ManejadorMySQL(){

        }
        
        public static ManejadorMySQL getInstance(){
            if(manejador == null){
                manejador = new ManejadorMySQL();
                manejador.conectar();
                return manejador;
            }
            else{
                return manejador;
            } 
        }
        
	private void conectar(){
		
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			con = DriverManager.getConnection("jdbc:mysql://localhost/concentra_db", "root", "");
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
      
        /*
        public boolean agregarProducto(Producto producto){
            
            try {
			int id = 0;
			pstm = con.prepareStatement("insert into productos (nombre, precio, cantidad_disponible, tipo_id) values (?, ?, ?, ?)");
			
			pstm.setString(1, producto.getNombre());
			pstm.setDouble(2, producto.getPrecio());
			pstm.setInt(3, producto.getCantidadDisponible());
                        int tipo = ((producto.getTipo().equals("Ordenador"))?2:1);
			pstm.setInt(4,tipo);
			pstm.execute();
			rs = pstm.executeQuery("SELECT LAST_INSERT_ID()");
			while(rs.next()){
				 id = rs.getInt(1);
			}
			producto.setCodigo(id);
			
                        if(tipo == 1){
                            pstm = con.prepareStatement("insert into celulares (operador, producto_id) values (?, ?)");
                            pstm.setString(1, ((TelefonoMovil)producto).getOperador());
                            pstm.setInt(2, producto.getCodigo());
                            pstm.execute();
                        }else{
                            pstm = con.prepareStatement("insert into computadoras (procesador, memoria, disco_duro, producto_id) values (?, ?, ?, ?)");
                            pstm.setString(1, ((Ordenador)producto).getProcesador());
                            pstm.setString(2, ((Ordenador)producto).getMemoria());
                            pstm.setString(3, ((Ordenador)producto).getDiscoDuro());
                            pstm.setInt(4, producto.getCodigo());
                            pstm.execute();
                        }
			rs.close();
                        return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			return false;
		}
        }
        
        public ArrayList<Producto> obtenerProductos(){
            ArrayList<Producto> productos = new ArrayList<Producto>();
            Producto productoActual = null;
            try {
			pstm = con.prepareStatement("SELECT productos.id, nombre, precio, cantidad_disponible, "
                                + "tipo_id as tipo, procesador, memoria, disco_duro, operador "
                                + "FROM productos left join computadoras on computadoras.producto_id = productos.id "
                                + "left join celulares on celulares.producto_id = productos.id order by productos.id;");
                    
			rs = pstm.executeQuery();
			
			while(rs.next()){
                          if(rs.getInt("tipo") == 1){
                              productoActual = new TelefonoMovil(rs.getInt("id"), rs.getString("nombre"),"Telefono Movil", 
                                      rs.getDouble("precio"), rs.getInt("cantidad_disponible"), rs.getString("operador"));
                          }else{
                              productoActual = new Ordenador(rs.getInt("id"), rs.getString("nombre"),"Ordenador", 
                                      rs.getDouble("precio"), rs.getInt("cantidad_disponible"), rs.getString("procesador"),
                                      rs.getString("memoria"), rs.getString("disco_duro"));
                          }
                          productos.add(productoActual);
			//usuario = new Usuario(rs.getString("nombre"), rs.getString("apellido"), rs.getString("nombreUsuario"), rs.getString("clave"));
                        //usuario.setId(rs.getInt("id"));
			}
			
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
            
            return productos;
        }
        
        public boolean guardarCambiosProducto(Producto producto){
            try {
                pstm = con.prepareStatement("UPDATE productos SET cantidad_disponible = ?, `nombre` = ?, `precio`= ? where id = ? ");
                pstm.setInt(1, (producto.getCantidadDisponible() + producto.cantidadDisponible));
                pstm.setString(2, producto.getNombre());
                pstm.setDouble(3, producto.getPrecio());
                pstm.setInt(4, producto.getCodigo());
                pstm.execute();
                
                if(producto.getTipo().equals("Ordenador")){
                    pstm = con.prepareStatement("UPDATE computadoras set `procesador` = ?, memoria = ?, disco_duro = ? where producto_id = ?");
                    pstm.setString(1, ((Ordenador)producto).getProcesador());
                    pstm.setString(2, ((Ordenador)producto).getMemoria());
                    pstm.setString(3, ((Ordenador)producto).getDiscoDuro());
                    pstm.setInt(4, producto.getCodigo());
                    pstm.execute();
                     return true;
                }else{
                    pstm = con.prepareStatement("UPDATE celulares set operador = ? where producto_id = ?");
                    pstm.setString(1, ((TelefonoMovil)producto).getOperador());
                    pstm.setInt(2, producto.getCodigo());
                    pstm.execute();    
                     return true;
                }
                
            } catch (Exception ex) {
               ex.printStackTrace();
                return false;
            }
        }
        
        public boolean reponerProducto(Producto producto, int cantidad){
            if(cantidad > 0){
            try {
                pstm = con.prepareStatement("UPDATE productos SET cantidad_disponible = ? where id = ? ");
                pstm.setInt(1, (producto.getCantidadDisponible() + cantidad));
                pstm.setInt(2, producto.getCodigo());
                pstm.execute();
                     return true;
                
            } catch (Exception ex) {
                return false;
            }
            
            }else{
                return false;
            }
        }
        
        public boolean agregarFactura(Factura factura){
            try {
                pstm = con.prepareStatement("insert into facturas (nombre_producto, precio_producto, cantidad, fecha) values (?, ?, ?, ?)");
                pstm.setString(1, factura.getNombre());
                pstm.setDouble(2, factura.getPrecio());
                pstm.setInt(3, factura.getCantidad());
                factura.setFecha(new Date(new DateTime().getMillis()));
                pstm.setDate(4, factura.getFecha());
                pstm.execute();
                return true;  
            } catch (Exception ex) {
               ex.printStackTrace();
               return false;
            }
        }
        
         public ArrayList<Factura> obtenerFacturas(){
            ArrayList<Factura> facturas = new ArrayList<Factura>();
            Factura facturaActual = null;
            try {
			pstm = con.prepareStatement("SELECT nombre_producto, precio_producto, cantidad, fecha "
                                + "FROM facturas order by fecha");
                    
			rs = pstm.executeQuery();
			
			while(rs.next()){
                          
                              facturaActual = new Factura(rs.getString("nombre_producto"), rs.getDouble("precio_producto"), rs.getInt("cantidad"), rs.getDate("fecha"));
           
                          facturas.add(facturaActual);
			//usuario = new Usuario(rs.getString("nombre"), rs.getString("apellido"), rs.getString("nombreUsuario"), rs.getString("clave"));
                        //usuario.setId(rs.getInt("id"));
			}
			
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
            
            return facturas;
        }
	/*
	public void agregarUsuario(Usuario usuario){
		
		try {
			int id = 0;
			pstm = con.prepareStatement("insert into usuarios (nombre, apellido, nombreUsuario, clave) values (?, ?, ?, ?)");
			
			pstm.setString(1, usuario.getNombre());
			pstm.setString(2, usuario.getApellido());
			pstm.setString(3, usuario.getNombreUsuario());
			pstm.setString(4, usuario.getContraseña());
			pstm.execute();

			 rs = pstm.executeQuery("SELECT LAST_INSERT_ID()");
			
			while(rs.next()){
				 id = rs.getInt(1);
			}
			usuario.setId(id);
			
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	public Usuario obtenerUsuario(String nombreUsuario){
		Usuario usuario = null;
		try {
			pstm = con.prepareStatement("select * from usuarios where nombreUsuario = ?");
                        pstm.setString(1, nombreUsuario);
			rs = pstm.executeQuery();
			
			while(rs.next()){
			usuario = new Usuario(rs.getString("nombre"), rs.getString("apellido"), rs.getString("nombreUsuario"), rs.getString("clave"));
                        usuario.setId(rs.getInt("id"));
			}
			
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return usuario;
	}
        
        public List<Libro> obtenerLibros(){
		List<Libro> libros = new ArrayList<Libro>();
		try {
			pstm = con.prepareStatement("select * from libros");
			rs = pstm.executeQuery();
			
			while(rs.next()){
			libros.add(new Libro(rs.getInt("id"), rs.getString("nombre"), rs.getString("autor"), rs.getDouble("precio"), rs.getString("ISBN")));
			}
			
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return libros;
	}
        
         public List<Compra> obtenerCompras(Integer usuarioId){
		List<Compra> compras = new ArrayList<Compra>();
		try {
			pstm = con.prepareStatement("select * from compras inner join libros on libros.id = compras.libroId where compras.usuarioId = ? ");
                        pstm.setInt(1, usuarioId);
			rs = pstm.executeQuery();
			
			while(rs.next()){
			compras.add(new Compra(rs.getInt(1), rs.getString("fecha"), new Libro(rs.getInt("libroId"), rs.getString("nombre"), rs.getString("autor"), rs.getDouble("precio"), rs.getString("ISBN"))));
			}
			
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return compras;
	}
         
          public  void insertarCompra(Compra compra){
             
		try {
                    
                   
			pstm = con.prepareStatement("insert into compras (fecha, usuarioId, libroId) values (?,?,?)");
                        java.util.Date fechacompra = new java.util.Date();
                        SimpleDateFormat formatoFecha = new SimpleDateFormat("dd/MM/yyyy hh:mm aa");
                         pstm.setString(1, formatoFecha.format(fechacompra).toString());
                         pstm.setInt(2, compra.getUsuarioId());
                         pstm.setInt(3, compra.getLibro().getId());
			 pstm.executeUpdate();
  
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
                
                
	
	}
          */
	public void desconectar(){
		try {
			con.close();
		} catch (SQLException e) {
			// TODO to-generated catch block
			e.printStackTrace();
		}
	}
	
    
}
