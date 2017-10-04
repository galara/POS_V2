/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.https://www.youtube.com/watch?v=ICF-RldvSIo
 */
package GUI;

import BD.BdConexion;
import BD.sqle;
import Modelos.Utilidades;
import excepciones.FiltraEntrada;
import excepciones.Helper;
import excepciones.VerificadorEntrada;
import java.awt.event.ActionEvent;
import java.awt.event.KeyEvent;
import java.sql.*;
import java.util.Calendar;
import javax.swing.AbstractAction;
import javax.swing.Action;
import javax.swing.JComponent;
import javax.swing.JOptionPane;
import javax.swing.KeyStroke;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author GLARA
 */
public class Empresa extends javax.swing.JInternalFrame {

    DefaultTableModel model;
    Connection conn;//getConnection intentara establecer una conexión.
    Statement sent;

    String[] titulos = {"Nombre Empresa", "Dirección", "Teléfono", "Correo"};

    /**
     * Creates new form Cliente
     */
    public Empresa() {
        initComponents();
        Desabilitar();
        setFiltroTexto();
        addEscapeKey();

        clientes.addKeyListener(new java.awt.event.KeyAdapter() {
            @Override
            public void keyPressed(java.awt.event.KeyEvent arg0) {
                int key = arg0.getKeyCode();
                if (key == java.awt.event.KeyEvent.VK_SPACE) {
                    filaseleccionada();
                }
                if (key == java.awt.event.KeyEvent.VK_DOWN || key == java.awt.event.KeyEvent.VK_UP) {
                    Limpiar();
                }
            }
        });

    }

    private void addEscapeKey() {
        KeyStroke escape = KeyStroke.getKeyStroke(KeyEvent.VK_ESCAPE, 0, false);
        Action escapeAction = new AbstractAction() {
            public void actionPerformed(ActionEvent e) {
                cerrarVentana();
            }
        };
        getRootPane().getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW).put(escape, "ESCAPE");
        getRootPane().getActionMap().put("ESCAPE", escapeAction);
    }

    private void cerrarVentana() {
        int nu = JOptionPane.showConfirmDialog(this, "¿Desea Cerrar esta ventana?", "Cerrar ventana", JOptionPane.YES_NO_OPTION);

        if (nu == JOptionPane.YES_OPTION || nu == 0) {
            this.dispose();
        } else {
        }
    }

    public void removejtable() {
        while (clientes.getRowCount() != 0) {
            model.removeRow(0);
        }
    }

    private void Desabilitar() {
        Utilidades.setEditableTexto(this.jPanel1, false, null, true, "");
    }

    private void Limpiar() {
        Utilidades.setEditableTexto(this.jPanel1, true, null, true, "");        
    }

    private void Habilitar() {
        Utilidades.setEditableTexto(this.jPanel1, true, null, true, "");
        //codigo.setEditable(false);
    }

    public void setFiltroTexto() {
        Helper.setFiltraEntrada(nombre.getDocument(), FiltraEntrada.DEFAULT, 150, true);
        Helper.setFiltraEntrada(direccion.getDocument(), FiltraEntrada.DEFAULT, 200, true);
        //Helper.setFiltraEntrada(nit.getDocument(), FiltraEntrada.DEFAULT, 32, true);
        Helper.setFiltraEntrada(telefono.getDocument(), FiltraEntrada.SOLO_NUMEROS, 100, true);
        Helper.setFiltraEntrada(txtDato.getDocument(), FiltraEntrada.DEFAULT, 150, true);
    }

//    private String getFecha() {
//
//        try {
//            String fecha;
//            int años = dcFecha.getCalendar().get(Calendar.YEAR);
//            int dias = dcFecha.getCalendar().get(Calendar.DAY_OF_MONTH);
//            int mess = dcFecha.getCalendar().get(Calendar.MONTH) + 1;
//            int hours = dcFecha.getCalendar().get(Calendar.HOUR_OF_DAY);
//            int minutes = dcFecha.getCalendar().get(Calendar.MINUTE);
//            int seconds = dcFecha.getCalendar().get(Calendar.SECOND);
//
//            fecha = "" + años + "-" + mess + "-" + dias + " " + hours + ":" + minutes + ":" + seconds;
//            return fecha;
//        } catch (Exception e) {
//            JOptionPane.showInternalMessageDialog(this, "Verifique la fecha");
//            System.out.print(e.getMessage());
//        }
//        return null;
//
//    }

//    private boolean existedeudor() {
//        try {
//            conn = BdConexion.getConexion();
//            int fila = clientes.getSelectedRow();
//            String idp = (String) clientes.getValueAt(fila, 0);
//            String sql;
//            sql = "select  clientes.idclientes, clientes.nombre,salida.estado from clientes INNER JOIN salida on salida.clientes_idclientes=clientes.idclientes where salida.estado='T' and clientes.idclientes=" + idp + " group by clientes.idclientes order by clientes.idclientes asc";
//            sent = conn.createStatement();// crea objeto Statement para consultar la base de datos
//            ResultSet rs = sent.executeQuery(sql);// especifica la consulta y la ejecuta
//
//            if (rs.next()) {//verifica si esta vacio, pero desplaza el puntero al siguiente elemento
//                rs.beforeFirst();//regresa el puntero al primer registro
//
//                return true;
//
//            } else {
//                return false;
//            }
//
//        } catch (SQLException e) {
//            JOptionPane.showInternalMessageDialog(this, "Error al cargar los datos", "Error ", JOptionPane.ERROR_MESSAGE);
//            //System.out.print(e.getMessage());
//        }
//
//        return false;
//
//    }

//    public String[] datoscliente() {
//        String[] fila = new String[5];
//        fila[0] = nombre.getText();
//        fila[1] = direccion.getText();
//        fila[2] = correo.getText();
//        //fila[3] = nit.getText();
//        fila[3] = telefono.getText();
//        int filas = clientes.getSelectedRow();
//        String dao = (String) clientes.getValueAt(filas, 0);
//        fila[4] = dao;
//        return fila;
//    }

//    private void formatotabla() {
//        //TableCellRenderer clase que se encarga de dibujar los datos que hay en cada celda la cual podemos modificar
//        //nos proporciona la posibilidad de cambiar su aspercto por uno personalizado y no el standar.
//        DefaultTableCellRenderer modelocentrar = new DefaultTableCellRenderer();
//        modelocentrar.setHorizontalAlignment(SwingConstants.CENTER);
//
//        //TableColumn representa todos los atributos de una columna en un JTable , como el ancho, resizibility, mínimo y máximo ancho
//        //en este caso defien el ancho de cada columna las cuales pueden ser de distinto ancho.
//        TableColumn column;// = null;
//        for (int i = 0; i < 5; i++) {
//            column = clientes.getColumnModel().getColumn(i);
//            if (i == 1) {
//                column.setPreferredWidth(200); //Difine el ancho de la columna
//            } else if (i == 0) {
//                column.setPreferredWidth(5); //Difine el ancho de la columna
//                clientes.getColumnModel().getColumn(i).setCellRenderer(modelocentrar);//Para centrar los datos en las columnas
//            } else if (i == 2) {
//                column.setPreferredWidth(250);//Difine el ancho de la columna
//            } else if (i == 3) {
//                column.setPreferredWidth(100); //Difine el ancho de la columna
//                clientes.getColumnModel().getColumn(i).setCellRenderer(modelocentrar);//Para centrar los datos en las columnas
//            } else if (i == 4) {
//                column.setPreferredWidth(50);//Difine el ancho de la columna
//                clientes.getColumnModel().getColumn(i).setCellRenderer(modelocentrar);//Para centrar los datos en las columnas
//            }
//
//        }
//
//    }

//    private void Llenar() {
//        try {
//            conn = BdConexion.getConexion();
//            removejtable();
//            sent = conn.createStatement();// crea objeto Statement para consultar la base de datos
//            String sql = "select  clientes.idclientes, clientes.nombre,clientes.direccion,clientes.nit,clientes.estado,salida.estado from clientes INNER JOIN salida on salida.clientes_idclientes=clientes.idclientes where salida.estado='T' group by clientes.idclientes order by clientes.idclientes asc";
//            ResultSet rs = sent.executeQuery(sql);// especifica la consulta y la ejecuta
//
//            String[] fila = new String[5];
//            while (rs.next()) {
//
//                fila[0] = rs.getString("nombre");
//                fila[1] = rs.getString("direccion");
//                fila[2] = rs.getString("telefono");
//                fila[3] = rs.getString("correo");
////                if (rs.getString("Estado").equals("T")) {
////                    fila[4] = "Activo";
////                } else {
////                    fila[4] = "Inactivo";
////                }
//                model.addRow(fila);
//            }
//            clientes.setModel(model);
//            Utilidades.ajustarAnchoColumnas(clientes);
//            //this.bntGuardar.setEnabled(false);
//            this.bntModificar.setEnabled(false);
//            //this.bntEliminar.setEnabled(false);
//            this.bntNuevo.setEnabled(true);
//        } catch (SQLException e) {
//            JOptionPane.showInternalMessageDialog(this, "Error al cargar los datos", "Error ", JOptionPane.ERROR_MESSAGE);
//        }
//    }

    private void MostrarTodo(String Dato) {
        try {
            conn = BdConexion.getConexion();
            String sql = "";
//            if (this.rbNit.isSelected()) {
//                sql = sqlc.BUSCANIT + "'" + Dato + "'";
//            }
            //if (this.rbNombre.isSelected()) {
                sql = sqle.BUSCANOMBRE + Dato + sqle.CUALQUIERA;
            //}
            removejtable();
            sent = conn.createStatement();// crea objeto Statement para consultar la base de datos
            ResultSet rs = sent.executeQuery(sql);// especifica la consulta y la ejecuta

            if (rs.next()) {//verifica si esta vacio, pero desplaza el puntero al siguiente elemento
                int count = 0;
                rs.beforeFirst();//regresa el puntero al primer registro
                String[] fila = new String[4];
                while (rs.next()) {//mientras tenga registros que haga lo siguiente
                    fila[0] = rs.getString("nombre");
                    fila[1] = rs.getString("direccion");
                    fila[2] = rs.getString("telefono");
                    fila[3] = rs.getString("correo");
//                    if (rs.getString("Estado").equals("T")) {
//                        fila[4] = "Activo";
//                    } else {
//                        fila[4] = "Inactivo";
//                    }
                    model.addRow(fila);
                    count = count + 1;
                }
                clientes.setModel(model);
                Utilidades.ajustarAnchoColumnas(clientes);
                //this.bntGuardar.setEnabled(false);
                this.bntModificar.setEnabled(false);
                //this.bntEliminar.setEnabled(false);
                //this.bntNuevo.setEnabled(true);
                Limpiar();
                Desabilitar();
            } else {
                JOptionPane.showInternalMessageDialog(this, "El dato no fue encontrado");
            }
        } catch (SQLException e) {
            JOptionPane.showInternalMessageDialog(this, "Error al cargar los datos", "Error ", JOptionPane.ERROR_MESSAGE);
            //System.out.print(e.getMessage());
        }
    }

    private void filaseleccionada() {
        int fila = clientes.getSelectedRow();
        if (clientes.getValueAt(fila, 0) != null) {
            try {
                conn = BdConexion.getConexion();
                Habilitar();
                String sql = sqle.LLENAR /*+ sqle.WHERE + sqle.ID + sqle.IGUAL + clientes.getValueAt(fila, 0)*/;
                sent = conn.createStatement();
                ResultSet rs = sent.executeQuery(sql);
                rs.next();
                //codigo.setText(rs.getString("idclientes"));
                nombre.setText(rs.getString("nombre"));
                direccion.setText(rs.getString("direccion"));
                correo.setText(rs.getString("correo"));
                //nit.setText(rs.getString("nit"));
                telefono.setText(rs.getString("telefono"));
//                if (rs.getString("Estado").equals("T")) {
//                    rbEstado.setSelected(true);
//                    rbEstado.setBackground(new java.awt.Color(102, 204, 0));
//                } else {
//                    rbEstado.setSelected(false);
//                    rbEstado.setBackground(Color.red);
//                }
//                dcFecha.setDate(rs.getDate("fec_reg"));

               // this.bntGuardar.setEnabled(false);
                this.bntModificar.setEnabled(true);
               // this.bntEliminar.setEnabled(true);
                //this.bntNuevo.setEnabled(false);
            } catch (SQLException e) {
                JOptionPane.showInternalMessageDialog(this, "Error al cargar los datos", "Error ", JOptionPane.ERROR_MESSAGE);
                //System.out.print(e.getMessage());
            }
        }
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        panelImage1 = new elaprendiz.gui.panel.PanelImage();
        pnlActionButtons = new javax.swing.JPanel();
        bntModificar = new elaprendiz.gui.button.ButtonRect();
        bntCancelar = new elaprendiz.gui.button.ButtonRect();
        bntSalir = new elaprendiz.gui.button.ButtonRect();
        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        nombre = new elaprendiz.gui.textField.TextField();
        correo = new elaprendiz.gui.textField.TextField();
        telefono = new elaprendiz.gui.textField.TextField();
        direccion = new elaprendiz.gui.textField.TextField();
        jPanel3 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        clientes = new javax.swing.JTable();
        pnlPaginador = new javax.swing.JPanel();
        jLabel8 = new javax.swing.JLabel();
        jPanel4 = new javax.swing.JPanel();
        jLabel7 = new javax.swing.JLabel();
        txtDato = new elaprendiz.gui.textField.TextField();
        jInternalFrame1 = new javax.swing.JInternalFrame();
        panelImage2 = new elaprendiz.gui.panel.PanelImage();
        pnlActionButtons1 = new javax.swing.JPanel();
        bntNuevo1 = new elaprendiz.gui.button.ButtonRect();
        bntModificar1 = new elaprendiz.gui.button.ButtonRect();
        bntGuardar1 = new elaprendiz.gui.button.ButtonRect();
        bntEliminar1 = new elaprendiz.gui.button.ButtonRect();
        bntCancelar1 = new elaprendiz.gui.button.ButtonRect();
        bntSalir1 = new elaprendiz.gui.button.ButtonRect();
        jPanel2 = new javax.swing.JPanel();
        jLabel9 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        jLabel13 = new javax.swing.JLabel();
        jLabel14 = new javax.swing.JLabel();
        jLabel15 = new javax.swing.JLabel();
        nombre1 = new elaprendiz.gui.textField.TextField();
        nit1 = new elaprendiz.gui.textField.TextField();
        correo1 = new elaprendiz.gui.textField.TextField();
        telefono1 = new elaprendiz.gui.textField.TextField();
        direccion1 = new elaprendiz.gui.textField.TextField();
        dcFecha1 = new com.toedter.calendar.JDateChooser();
        rbEstado1 = new javax.swing.JRadioButton();
        jLabel16 = new javax.swing.JLabel();
        codigo1 = new elaprendiz.gui.textField.TextField();
        jPanel5 = new javax.swing.JPanel();
        jScrollPane2 = new javax.swing.JScrollPane();
        clientes1 = new javax.swing.JTable();
        pnlPaginador1 = new javax.swing.JPanel();
        jLabel17 = new javax.swing.JLabel();
        jPanel6 = new javax.swing.JPanel();
        jLabel18 = new javax.swing.JLabel();
        txtDato1 = new elaprendiz.gui.textField.TextField();
        rbNit1 = new javax.swing.JRadioButton();
        rbNombre1 = new javax.swing.JRadioButton();
        buttonMostrar3 = new elaprendiz.gui.button.ButtonRect();
        buttonMostrar4 = new elaprendiz.gui.button.ButtonRect();
        buttonMostrar5 = new elaprendiz.gui.button.ButtonRect();

        setBackground(new java.awt.Color(0, 0, 0));
        setDefaultCloseOperation(javax.swing.WindowConstants.DO_NOTHING_ON_CLOSE);
        setForeground(new java.awt.Color(0, 0, 0));
        setTitle("Empresa");
        setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        setFocusTraversalPolicyProvider(true);
        setName("Empresa"); // NOI18N
        addInternalFrameListener(new javax.swing.event.InternalFrameListener() {
            public void internalFrameActivated(javax.swing.event.InternalFrameEvent evt) {
            }
            public void internalFrameClosed(javax.swing.event.InternalFrameEvent evt) {
            }
            public void internalFrameClosing(javax.swing.event.InternalFrameEvent evt) {
                formInternalFrameClosing(evt);
            }
            public void internalFrameDeactivated(javax.swing.event.InternalFrameEvent evt) {
            }
            public void internalFrameDeiconified(javax.swing.event.InternalFrameEvent evt) {
            }
            public void internalFrameIconified(javax.swing.event.InternalFrameEvent evt) {
            }
            public void internalFrameOpened(javax.swing.event.InternalFrameEvent evt) {
            }
        });

        panelImage1.setLayout(null);

        pnlActionButtons.setBackground(new java.awt.Color(204, 204, 204));
        pnlActionButtons.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(51, 153, 255), 1, true));
        pnlActionButtons.setPreferredSize(new java.awt.Dimension(786, 52));
        pnlActionButtons.setLayout(new java.awt.GridBagLayout());

        bntModificar.setBackground(new java.awt.Color(51, 153, 255));
        bntModificar.setMnemonic(KeyEvent.VK_M);
        bntModificar.setText("Modificar");
        bntModificar.setToolTipText("ALT+M");
        bntModificar.setEnabled(false);
        bntModificar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                bntModificarActionPerformed(evt);
            }
        });
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
        gridBagConstraints.insets = new java.awt.Insets(13, 5, 12, 0);
        pnlActionButtons.add(bntModificar, gridBagConstraints);

        bntCancelar.setBackground(new java.awt.Color(51, 153, 255));
        bntCancelar.setMnemonic(KeyEvent.VK_X);
        bntCancelar.setText("Cancelar");
        bntCancelar.setToolTipText("ALT+X");
        bntCancelar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                bntCancelarActionPerformed(evt);
            }
        });
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 4;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
        gridBagConstraints.insets = new java.awt.Insets(13, 5, 12, 0);
        pnlActionButtons.add(bntCancelar, gridBagConstraints);

        bntSalir.setBackground(new java.awt.Color(51, 153, 255));
        bntSalir.setText("Salir");
        bntSalir.setToolTipText("ESC");
        bntSalir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                bntSalirActionPerformed(evt);
            }
        });
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 5;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
        gridBagConstraints.insets = new java.awt.Insets(13, 5, 12, 93);
        pnlActionButtons.add(bntSalir, gridBagConstraints);

        panelImage1.add(pnlActionButtons);
        pnlActionButtons.setBounds(0, 430, 880, 50);

        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel1.setLayout(null);

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.TRAILING);
        jLabel1.setText("*Nombre:");
        jPanel1.add(jLabel1);
        jLabel1.setBounds(45, 40, 80, 20);

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.TRAILING);
        jLabel2.setText("Correo:");
        jPanel1.add(jLabel2);
        jLabel2.setBounds(45, 65, 80, 20);

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel3.setHorizontalAlignment(javax.swing.SwingConstants.TRAILING);
        jLabel3.setText("*Dirección:");
        jPanel1.add(jLabel3);
        jLabel3.setBounds(45, 90, 80, 20);

        jLabel4.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel4.setHorizontalAlignment(javax.swing.SwingConstants.TRAILING);
        jLabel4.setText("Telefono:");
        jPanel1.add(jLabel4);
        jLabel4.setBounds(400, 65, 80, 20);

        nombre.setEditable(false);
        nombre.setHorizontalAlignment(javax.swing.JTextField.LEFT);
        nombre.setName("nombre"); // NOI18N
        nombre.setPreferredSize(new java.awt.Dimension(120, 21));
        jPanel1.add(nombre);
        nombre.setBounds(140, 40, 250, 21);

        correo.setEditable(false);
        correo.setHorizontalAlignment(javax.swing.JTextField.LEFT);
        correo.setPreferredSize(new java.awt.Dimension(120, 21));
        jPanel1.add(correo);
        correo.setBounds(140, 65, 250, 21);

        telefono.setEditable(false);
        telefono.setHorizontalAlignment(javax.swing.JTextField.LEFT);
        telefono.setPreferredSize(new java.awt.Dimension(120, 21));
        jPanel1.add(telefono);
        telefono.setBounds(490, 65, 150, 21);

        direccion.setEditable(false);
        direccion.setHorizontalAlignment(javax.swing.JTextField.LEFT);
        direccion.setName("direccion"); // NOI18N
        direccion.setPreferredSize(new java.awt.Dimension(120, 21));
        jPanel1.add(direccion);
        direccion.setBounds(140, 90, 500, 21);

        panelImage1.add(jPanel1);
        jPanel1.setBounds(0, 40, 880, 140);

        jPanel3.setOpaque(false);
        jPanel3.setPreferredSize(new java.awt.Dimension(786, 402));
        jPanel3.setLayout(new java.awt.BorderLayout());

        jScrollPane1.setVerticalScrollBarPolicy(javax.swing.ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS);

        clientes.setModel(model = new DefaultTableModel(null, titulos)
            {
                @Override
                public boolean isCellEditable(int row, int column) {
                    return false;
                }
            });
            clientes.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
            clientes.setFocusCycleRoot(true);
            clientes.setRowHeight(24);
            clientes.setSurrendersFocusOnKeystroke(true);
            clientes.addMouseListener(new java.awt.event.MouseAdapter() {
                public void mouseClicked(java.awt.event.MouseEvent evt) {
                    clientesMouseClicked(evt);
                }
                public void mousePressed(java.awt.event.MouseEvent evt) {
                    clientesMouseClicked(evt);
                }
            });
            jScrollPane1.setViewportView(clientes);
            clientes.getAccessibleContext().setAccessibleName("");

            jPanel3.add(jScrollPane1, java.awt.BorderLayout.CENTER);

            panelImage1.add(jPanel3);
            jPanel3.setBounds(0, 250, 880, 180);

            pnlPaginador.setBackground(new java.awt.Color(0, 153, 204));
            pnlPaginador.setPreferredSize(new java.awt.Dimension(786, 40));
            pnlPaginador.setLayout(new java.awt.GridBagLayout());

            jLabel8.setFont(new java.awt.Font("Script MT Bold", 1, 32)); // NOI18N
            jLabel8.setForeground(new java.awt.Color(255, 255, 255));
            jLabel8.setText("<--Empresa-->");
            pnlPaginador.add(jLabel8, new java.awt.GridBagConstraints());

            panelImage1.add(pnlPaginador);
            pnlPaginador.setBounds(0, 0, 880, 40);

            jPanel4.setBackground(new java.awt.Color(204, 204, 204));
            jPanel4.setBorder(javax.swing.BorderFactory.createEtchedBorder());
            jPanel4.setLayout(null);

            jLabel7.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
            jLabel7.setText("Buscar :");
            jPanel4.add(jLabel7);
            jLabel7.setBounds(45, 10, 60, 17);

            txtDato.setPreferredSize(new java.awt.Dimension(250, 27));
            txtDato.addActionListener(new java.awt.event.ActionListener() {
                public void actionPerformed(java.awt.event.ActionEvent evt) {
                    txtDatoActionPerformed(evt);
                }
            });
            jPanel4.add(txtDato);
            txtDato.setBounds(110, 10, 250, 27);

            panelImage1.add(jPanel4);
            jPanel4.setBounds(0, 179, 880, 70);

            getContentPane().add(panelImage1, java.awt.BorderLayout.CENTER);

            jInternalFrame1.setBackground(new java.awt.Color(0, 0, 0));
            jInternalFrame1.setDefaultCloseOperation(javax.swing.WindowConstants.DO_NOTHING_ON_CLOSE);
            jInternalFrame1.setForeground(new java.awt.Color(0, 0, 0));
            jInternalFrame1.setTitle("Clientes");
            jInternalFrame1.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
            jInternalFrame1.setFocusTraversalPolicyProvider(true);
            jInternalFrame1.setName("Cliente"); // NOI18N
            jInternalFrame1.addInternalFrameListener(new javax.swing.event.InternalFrameListener() {
                public void internalFrameActivated(javax.swing.event.InternalFrameEvent evt) {
                }
                public void internalFrameClosed(javax.swing.event.InternalFrameEvent evt) {
                }
                public void internalFrameClosing(javax.swing.event.InternalFrameEvent evt) {
                    jInternalFrame1formInternalFrameClosing(evt);
                }
                public void internalFrameDeactivated(javax.swing.event.InternalFrameEvent evt) {
                }
                public void internalFrameDeiconified(javax.swing.event.InternalFrameEvent evt) {
                }
                public void internalFrameIconified(javax.swing.event.InternalFrameEvent evt) {
                }
                public void internalFrameOpened(javax.swing.event.InternalFrameEvent evt) {
                }
            });

            panelImage2.setLayout(null);

            pnlActionButtons1.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(51, 153, 255), 1, true));
            pnlActionButtons1.setOpaque(false);
            pnlActionButtons1.setPreferredSize(new java.awt.Dimension(786, 52));
            pnlActionButtons1.setLayout(new java.awt.GridBagLayout());

            bntNuevo1.setBackground(new java.awt.Color(51, 153, 255));
            bntNuevo1.setMnemonic(KeyEvent.VK_N);
            bntNuevo1.setText("Nuevo");
            bntNuevo1.setToolTipText("ALT+N");
            bntNuevo1.addActionListener(new java.awt.event.ActionListener() {
                public void actionPerformed(java.awt.event.ActionEvent evt) {
                    bntNuevo1ActionPerformed(evt);
                }
            });
            gridBagConstraints = new java.awt.GridBagConstraints();
            gridBagConstraints.gridx = 0;
            gridBagConstraints.gridy = 0;
            gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
            gridBagConstraints.insets = new java.awt.Insets(13, 84, 12, 0);
            pnlActionButtons1.add(bntNuevo1, gridBagConstraints);

            bntModificar1.setBackground(new java.awt.Color(51, 153, 255));
            bntModificar1.setMnemonic(KeyEvent.VK_M);
            bntModificar1.setText("Modificar");
            bntModificar1.setToolTipText("ALT+M");
            bntModificar1.setEnabled(false);
            bntModificar1.addActionListener(new java.awt.event.ActionListener() {
                public void actionPerformed(java.awt.event.ActionEvent evt) {
                    bntModificar1ActionPerformed(evt);
                }
            });
            gridBagConstraints = new java.awt.GridBagConstraints();
            gridBagConstraints.gridx = 1;
            gridBagConstraints.gridy = 0;
            gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
            gridBagConstraints.insets = new java.awt.Insets(13, 5, 12, 0);
            pnlActionButtons1.add(bntModificar1, gridBagConstraints);

            bntGuardar1.setBackground(new java.awt.Color(51, 153, 255));
            bntGuardar1.setMnemonic(KeyEvent.VK_G);
            bntGuardar1.setText("Guardar");
            bntGuardar1.setToolTipText("ALT+G");
            bntGuardar1.setEnabled(false);
            bntGuardar1.addActionListener(new java.awt.event.ActionListener() {
                public void actionPerformed(java.awt.event.ActionEvent evt) {
                    bntGuardar1ActionPerformed(evt);
                }
            });
            gridBagConstraints = new java.awt.GridBagConstraints();
            gridBagConstraints.gridx = 2;
            gridBagConstraints.gridy = 0;
            gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
            gridBagConstraints.insets = new java.awt.Insets(13, 5, 12, 0);
            pnlActionButtons1.add(bntGuardar1, gridBagConstraints);

            bntEliminar1.setBackground(new java.awt.Color(51, 153, 255));
            bntEliminar1.setMnemonic(KeyEvent.VK_E);
            bntEliminar1.setText("Eliminar");
            bntEliminar1.setToolTipText("ALT+E");
            bntEliminar1.addActionListener(new java.awt.event.ActionListener() {
                public void actionPerformed(java.awt.event.ActionEvent evt) {
                    bntEliminar1ActionPerformed(evt);
                }
            });
            gridBagConstraints = new java.awt.GridBagConstraints();
            gridBagConstraints.gridx = 3;
            gridBagConstraints.gridy = 0;
            gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
            gridBagConstraints.insets = new java.awt.Insets(13, 5, 12, 0);
            pnlActionButtons1.add(bntEliminar1, gridBagConstraints);

            bntCancelar1.setBackground(new java.awt.Color(51, 153, 255));
            bntCancelar1.setMnemonic(KeyEvent.VK_X);
            bntCancelar1.setText("Cancelar");
            bntCancelar1.setToolTipText("ALT+X");
            bntCancelar1.addActionListener(new java.awt.event.ActionListener() {
                public void actionPerformed(java.awt.event.ActionEvent evt) {
                    bntCancelar1ActionPerformed(evt);
                }
            });
            gridBagConstraints = new java.awt.GridBagConstraints();
            gridBagConstraints.gridx = 4;
            gridBagConstraints.gridy = 0;
            gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
            gridBagConstraints.insets = new java.awt.Insets(13, 5, 12, 0);
            pnlActionButtons1.add(bntCancelar1, gridBagConstraints);

            bntSalir1.setBackground(new java.awt.Color(51, 153, 255));
            bntSalir1.setText("Salir");
            bntSalir1.setToolTipText("ESC");
            bntSalir1.addActionListener(new java.awt.event.ActionListener() {
                public void actionPerformed(java.awt.event.ActionEvent evt) {
                    bntSalir1ActionPerformed(evt);
                }
            });
            gridBagConstraints = new java.awt.GridBagConstraints();
            gridBagConstraints.gridx = 5;
            gridBagConstraints.gridy = 0;
            gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
            gridBagConstraints.insets = new java.awt.Insets(13, 5, 12, 93);
            pnlActionButtons1.add(bntSalir1, gridBagConstraints);

            panelImage2.add(pnlActionButtons1);
            pnlActionButtons1.setBounds(0, 430, 880, 50);

            jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder());
            jPanel2.setOpaque(false);
            jPanel2.setLayout(null);

            jLabel9.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
            jLabel9.setHorizontalAlignment(javax.swing.SwingConstants.TRAILING);
            jLabel9.setText("*Nombre:");
            jPanel2.add(jLabel9);
            jLabel9.setBounds(45, 40, 80, 20);

            jLabel11.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
            jLabel11.setHorizontalAlignment(javax.swing.SwingConstants.TRAILING);
            jLabel11.setText("Correo:");
            jPanel2.add(jLabel11);
            jLabel11.setBounds(45, 65, 80, 20);

            jLabel12.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
            jLabel12.setHorizontalAlignment(javax.swing.SwingConstants.TRAILING);
            jLabel12.setText("*Dirección:");
            jPanel2.add(jLabel12);
            jLabel12.setBounds(45, 90, 80, 20);

            jLabel13.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
            jLabel13.setHorizontalAlignment(javax.swing.SwingConstants.TRAILING);
            jLabel13.setText("Telefono:");
            jPanel2.add(jLabel13);
            jLabel13.setBounds(400, 65, 80, 20);

            jLabel14.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
            jLabel14.setHorizontalAlignment(javax.swing.SwingConstants.TRAILING);
            jLabel14.setText("Nit:");
            jPanel2.add(jLabel14);
            jLabel14.setBounds(400, 40, 80, 20);

            jLabel15.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
            jLabel15.setText("*Fecha de registro:");
            jPanel2.add(jLabel15);
            jLabel15.setBounds(680, 40, 140, 21);

            nombre1.setEditable(false);
            nombre1.setHorizontalAlignment(javax.swing.JTextField.LEFT);
            nombre1.setPreferredSize(new java.awt.Dimension(120, 21));
            jPanel2.add(nombre1);
            nombre1.setBounds(140, 40, 250, 21);

            nit1.setEditable(false);
            nit1.setHorizontalAlignment(javax.swing.JTextField.LEFT);
            nit1.setPreferredSize(new java.awt.Dimension(120, 21));
            jPanel2.add(nit1);
            nit1.setBounds(490, 40, 150, 21);

            correo1.setEditable(false);
            correo1.setHorizontalAlignment(javax.swing.JTextField.LEFT);
            correo1.setInputVerifier(new VerificadorEntrada(125,VerificadorEntrada.EMAIL));
            correo1.setPreferredSize(new java.awt.Dimension(120, 21));
            jPanel2.add(correo1);
            correo1.setBounds(140, 65, 250, 21);

            telefono1.setEditable(false);
            telefono1.setHorizontalAlignment(javax.swing.JTextField.LEFT);
            telefono1.setPreferredSize(new java.awt.Dimension(120, 21));
            jPanel2.add(telefono1);
            telefono1.setBounds(490, 65, 150, 21);

            direccion1.setEditable(false);
            direccion1.setHorizontalAlignment(javax.swing.JTextField.LEFT);
            direccion1.setPreferredSize(new java.awt.Dimension(120, 21));
            jPanel2.add(direccion1);
            direccion1.setBounds(140, 90, 500, 21);

            dcFecha1.setDate(Calendar.getInstance().getTime());
            dcFecha1.setDateFormatString("dd/MM/yyyy");
            dcFecha1.setFont(new java.awt.Font("Arial", 1, 12)); // NOI18N
            dcFecha1.setMaxSelectableDate(new java.util.Date(3093496470100000L));
            dcFecha1.setMinSelectableDate(new java.util.Date(-62135744300000L));
            dcFecha1.setPreferredSize(new java.awt.Dimension(120, 22));
            jPanel2.add(dcFecha1);
            dcFecha1.setBounds(680, 65, 140, 21);

            rbEstado1.setBackground(new java.awt.Color(51, 153, 255));
            rbEstado1.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
            rbEstado1.setForeground(new java.awt.Color(255, 255, 255));
            rbEstado1.setSelected(true);
            rbEstado1.setText("Activo");
            rbEstado1.addActionListener(new java.awt.event.ActionListener() {
                public void actionPerformed(java.awt.event.ActionEvent evt) {
                    rbEstado1ActionPerformed(evt);
                }
            });
            jPanel2.add(rbEstado1);
            rbEstado1.setBounds(680, 90, 140, 21);

            jLabel16.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
            jLabel16.setHorizontalAlignment(javax.swing.SwingConstants.TRAILING);
            jLabel16.setText("Codigo:");
            jPanel2.add(jLabel16);
            jLabel16.setBounds(45, 15, 80, 17);

            codigo1.setEditable(false);
            codigo1.setHorizontalAlignment(javax.swing.JTextField.LEFT);
            codigo1.setPreferredSize(new java.awt.Dimension(120, 21));
            jPanel2.add(codigo1);
            codigo1.setBounds(140, 15, 120, 21);

            panelImage2.add(jPanel2);
            jPanel2.setBounds(0, 40, 880, 140);

            jPanel5.setOpaque(false);
            jPanel5.setPreferredSize(new java.awt.Dimension(786, 402));
            jPanel5.setLayout(new java.awt.BorderLayout());

            jScrollPane2.setVerticalScrollBarPolicy(javax.swing.ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS);

            clientes1.setModel(model = new DefaultTableModel(null, titulos)
                {
                    @Override
                    public boolean isCellEditable(int row, int column) {
                        return false;
                    }
                });
                clientes1.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
                clientes1.setFocusCycleRoot(true);
                clientes1.setRowHeight(24);
                clientes1.setSurrendersFocusOnKeystroke(true);
                clientes1.addMouseListener(new java.awt.event.MouseAdapter() {
                    public void mouseClicked(java.awt.event.MouseEvent evt) {
                        clientes1MouseClicked(evt);
                    }
                    public void mousePressed(java.awt.event.MouseEvent evt) {
                        clientes1MouseClicked1(evt);
                    }
                });
                jScrollPane2.setViewportView(clientes1);

                jPanel5.add(jScrollPane2, java.awt.BorderLayout.CENTER);

                panelImage2.add(jPanel5);
                jPanel5.setBounds(0, 250, 880, 180);

                pnlPaginador1.setBackground(new java.awt.Color(0, 153, 204));
                pnlPaginador1.setPreferredSize(new java.awt.Dimension(786, 40));
                pnlPaginador1.setLayout(new java.awt.GridBagLayout());

                jLabel17.setFont(new java.awt.Font("Script MT Bold", 1, 32)); // NOI18N
                jLabel17.setForeground(new java.awt.Color(255, 255, 255));
                jLabel17.setText("<--Clientes-->");
                pnlPaginador1.add(jLabel17, new java.awt.GridBagConstraints());

                panelImage2.add(pnlPaginador1);
                pnlPaginador1.setBounds(0, 0, 880, 40);

                jPanel6.setBorder(javax.swing.BorderFactory.createEtchedBorder());
                jPanel6.setOpaque(false);
                jPanel6.setLayout(null);

                jLabel18.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
                jLabel18.setText("Buscar Por:");
                jPanel6.add(jLabel18);
                jLabel18.setBounds(25, 10, 80, 17);

                txtDato1.setPreferredSize(new java.awt.Dimension(250, 27));
                txtDato1.addActionListener(new java.awt.event.ActionListener() {
                    public void actionPerformed(java.awt.event.ActionEvent evt) {
                        txtDato1ActionPerformed(evt);
                    }
                });
                jPanel6.add(txtDato1);
                txtDato1.setBounds(110, 10, 250, 27);

                rbNit1.setBackground(new java.awt.Color(51, 153, 255));
                rbNit1.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
                rbNit1.setForeground(new java.awt.Color(255, 255, 255));
                rbNit1.setText("Codigo");
                rbNit1.addActionListener(new java.awt.event.ActionListener() {
                    public void actionPerformed(java.awt.event.ActionEvent evt) {
                        rbNit1ActionPerformed(evt);
                    }
                });
                jPanel6.add(rbNit1);
                rbNit1.setBounds(140, 40, 80, 25);

                rbNombre1.setBackground(new java.awt.Color(51, 153, 255));
                rbNombre1.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
                rbNombre1.setForeground(new java.awt.Color(255, 255, 255));
                rbNombre1.setSelected(true);
                rbNombre1.setText("Nombre");
                rbNombre1.addActionListener(new java.awt.event.ActionListener() {
                    public void actionPerformed(java.awt.event.ActionEvent evt) {
                        rbNombre1ActionPerformed(evt);
                    }
                });
                jPanel6.add(rbNombre1);
                rbNombre1.setBounds(260, 40, 81, 25);

                buttonMostrar3.setBackground(new java.awt.Color(102, 204, 0));
                buttonMostrar3.setText("Deudores");
                buttonMostrar3.addActionListener(new java.awt.event.ActionListener() {
                    public void actionPerformed(java.awt.event.ActionEvent evt) {
                        buttonMostrar3ActionPerformed(evt);
                    }
                });
                jPanel6.add(buttonMostrar3);
                buttonMostrar3.setBounds(480, 10, 110, 25);

                buttonMostrar4.setBackground(new java.awt.Color(102, 204, 0));
                buttonMostrar4.setText("Estado de cuenta");
                buttonMostrar4.addActionListener(new java.awt.event.ActionListener() {
                    public void actionPerformed(java.awt.event.ActionEvent evt) {
                        buttonMostrar4ActionPerformed(evt);
                    }
                });
                jPanel6.add(buttonMostrar4);
                buttonMostrar4.setBounds(595, 10, 140, 25);

                buttonMostrar5.setBackground(new java.awt.Color(102, 204, 0));
                buttonMostrar5.setText("Devoluciones");
                buttonMostrar5.addActionListener(new java.awt.event.ActionListener() {
                    public void actionPerformed(java.awt.event.ActionEvent evt) {
                        buttonMostrar5ActionPerformed(evt);
                    }
                });
                jPanel6.add(buttonMostrar5);
                buttonMostrar5.setBounds(740, 10, 129, 25);

                panelImage2.add(jPanel6);
                jPanel6.setBounds(0, 179, 880, 70);

                jInternalFrame1.getContentPane().add(panelImage2, java.awt.BorderLayout.CENTER);

                getContentPane().add(jInternalFrame1, java.awt.BorderLayout.PAGE_START);

                setBounds(0, 0, 893, 512);
            }// </editor-fold>//GEN-END:initComponents

    private void bntSalirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bntSalirActionPerformed
        cerrarVentana();
    }//GEN-LAST:event_bntSalirActionPerformed

    private void clientesMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_clientesMouseClicked
        // TODO add your handling code here:
        if (evt.getButton() == 1) {
            int fila = clientes.getSelectedRow();
            if (clientes.getValueAt(fila, 0) != null) {
                try {
                    conn = BdConexion.getConexion();
                    Habilitar();
                    String sql = sqle.LLENAR /*+ sqle.WHERE + sqle.ID + sqle.IGUAL + clientes.getValueAt(fila, 0)*/;
                    sent = conn.createStatement();
                    ResultSet rs = sent.executeQuery(sql);
                    rs.next();
                    //codigo.setText(rs.getString("idclientes"));
                    nombre.setText(rs.getString("nombre"));
                    direccion.setText(rs.getString("direccion"));
                    correo.setText(rs.getString("correo"));
                    //nit.setText(rs.getString("nit"));
                    telefono.setText(rs.getString("telefono"));
//                    if (rs.getString("Estado").equals("T")) {
//                        rbEstado.setSelected(true);
//                        rbEstado.setBackground(new java.awt.Color(102, 204, 0));
//                    } else {
//                        rbEstado.setSelected(false);
//                        rbEstado.setBackground(Color.red);
//                    }
//                    dcFecha.setDate(rs.getDate("fec_reg"));

                    //this.bntGuardar.setEnabled(false);
                    this.bntModificar.setEnabled(true);
                    //this.bntEliminar.setEnabled(true);
                    //this.bntNuevo.setEnabled(false);
                } catch (SQLException e) {
                    JOptionPane.showInternalMessageDialog(this, "Error al cargar los datos", "Error ", JOptionPane.ERROR_MESSAGE);
                    //System.out.print(e.getMessage());
                }
            }
        }
    }//GEN-LAST:event_clientesMouseClicked

    private void bntModificarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bntModificarActionPerformed
        // TODO add your handling code here:

        if (Utilidades.esObligatorio(this.jPanel1, true)) {
            JOptionPane.showInternalMessageDialog(this, "Los campos marcados son"
                    + " Obligatorios", "Error", JOptionPane.ERROR_MESSAGE);
            return;
        }

        if (nombre.getText().equals("") || direccion.getText().equals("") ) {
            JOptionPane.showInternalMessageDialog(this, "Complete los campos obligatorios");
        } else {
            int resp;
            resp = JOptionPane.showInternalConfirmDialog(this, "¿Desea Modidicar el Registro?", "Pregunta", 0);
            if (resp == 0) {
                try {
                    conn = BdConexion.getConexion();
                    int fila = clientes.getSelectedRow();
                    String dao = (String) clientes.getValueAt(fila, 0);

                    //PreparedStatement nos permite crear instrucciones SQL compiladas, que se ejecutan con más efi ciencia que los objetos Statement
                    //también pueden especifi car parámetros,lo cual las hace más fl exibles que las instrucciones Statement
                    String sql = "update empresa set  nombre=?, direccion=?, correo=?, telefono=?";
                    //String ni = nit.getText();

//                    if (!ni.isEmpty()) {
//                        sql = "update empresa set  nombre=?, direccion=?, correo=?, nit=?, telefono=?,Estado=?,fec_reg=? where idclientes=?";
//                    } else if (ni.isEmpty()) {
//                        sql = "update empresa set  nombre=?, direccion=?, correo=?,telefono=?,Estado=?,fec_reg=? where idclientes=?";
//                    }

                    PreparedStatement ps = conn.prepareCall(sql);
                   // if (!ni.isEmpty()) {
                        ps.setString(1, nombre.getText());
                        ps.setString(2, direccion.getText());
                        ps.setString(3, correo.getText());
                        //ps.setString(4, nit.getText());
                        ps.setString(4, telefono.getText());
//                        if (this.rbEstado.isSelected()) {
//                            ps.setString(6, "T");
//                        } else {
//                            ps.setString(6, "F");
//                        }
//                        ps.setString(7, getFecha());
//                        ps.setString(8, dao);
//                    } else if (ni.isEmpty()) {
//                        ps.setString(1, nombre.getText());
//                        ps.setString(2, direccion.getText());
//                        ps.setString(3, correo.getText());
//                        ps.setString(4, telefono.getText());
//                        if (this.rbEstado.isSelected()) {
//                            ps.setString(5, "T");
//                        } else {
//                            ps.setString(5, "F");
//                        }
//                        ps.setString(6, getFecha());
//                        ps.setString(7, dao);
//                    }

                    int n = ps.executeUpdate();
                    if (n > 0) {
                        Limpiar();
                        Desabilitar();
                        MostrarTodo(txtDato.getText());
                        txtDato.requestFocus();
                        JOptionPane.showInternalMessageDialog(this, "Datos modificados correctamente");
                    }
                } catch (SQLException e) {
                    if (e.getErrorCode() == 1062) {
                        JOptionPane.showInternalMessageDialog(this,
                                "Error al modificar \n El nit ya existe ingrese uno diferente", "Error ", JOptionPane.ERROR_MESSAGE);
                    } else {
                        JOptionPane.showInternalMessageDialog(this,
                                "Error al modificar \n Verifique los datos e intente nuevamente", "Error ", JOptionPane.ERROR_MESSAGE);
                    }
                }
            }
        }
    }//GEN-LAST:event_bntModificarActionPerformed

    private void bntCancelarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bntCancelarActionPerformed
        // TODO add your handling code here:
        Limpiar();
        Desabilitar();
        removejtable();
        MostrarTodo(txtDato.getText());
        txtDato.requestFocus();

    }//GEN-LAST:event_bntCancelarActionPerformed

    private void txtDatoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtDatoActionPerformed
        // TODO add your handling code here:
        MostrarTodo(txtDato.getText());
    }//GEN-LAST:event_txtDatoActionPerformed

    private void formInternalFrameClosing(javax.swing.event.InternalFrameEvent evt) {//GEN-FIRST:event_formInternalFrameClosing
        // TODO add your handling code here:
        cerrarVentana();
    }//GEN-LAST:event_formInternalFrameClosing

    private void bntNuevo1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bntNuevo1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_bntNuevo1ActionPerformed

    private void bntModificar1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bntModificar1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_bntModificar1ActionPerformed

    private void bntGuardar1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bntGuardar1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_bntGuardar1ActionPerformed

    private void bntEliminar1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bntEliminar1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_bntEliminar1ActionPerformed

    private void bntCancelar1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bntCancelar1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_bntCancelar1ActionPerformed

    private void bntSalir1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bntSalir1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_bntSalir1ActionPerformed

    private void rbEstado1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_rbEstado1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_rbEstado1ActionPerformed

    private void clientes1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_clientes1MouseClicked
        // TODO add your handling code here:
    }//GEN-LAST:event_clientes1MouseClicked

    private void clientes1MouseClicked1(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_clientes1MouseClicked1
        // TODO add your handling code here:
    }//GEN-LAST:event_clientes1MouseClicked1

    private void txtDato1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtDato1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtDato1ActionPerformed

    private void rbNit1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_rbNit1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_rbNit1ActionPerformed

    private void rbNombre1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_rbNombre1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_rbNombre1ActionPerformed

    private void buttonMostrar3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_buttonMostrar3ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_buttonMostrar3ActionPerformed

    private void buttonMostrar4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_buttonMostrar4ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_buttonMostrar4ActionPerformed

    private void buttonMostrar5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_buttonMostrar5ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_buttonMostrar5ActionPerformed

    private void jInternalFrame1formInternalFrameClosing(javax.swing.event.InternalFrameEvent evt) {//GEN-FIRST:event_jInternalFrame1formInternalFrameClosing
        // TODO add your handling code here:
    }//GEN-LAST:event_jInternalFrame1formInternalFrameClosing

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private elaprendiz.gui.button.ButtonRect bntCancelar;
    private elaprendiz.gui.button.ButtonRect bntCancelar1;
    private elaprendiz.gui.button.ButtonRect bntEliminar1;
    private elaprendiz.gui.button.ButtonRect bntGuardar1;
    private elaprendiz.gui.button.ButtonRect bntModificar;
    private elaprendiz.gui.button.ButtonRect bntModificar1;
    private elaprendiz.gui.button.ButtonRect bntNuevo1;
    private elaprendiz.gui.button.ButtonRect bntSalir;
    private elaprendiz.gui.button.ButtonRect bntSalir1;
    private elaprendiz.gui.button.ButtonRect buttonMostrar3;
    private elaprendiz.gui.button.ButtonRect buttonMostrar4;
    private elaprendiz.gui.button.ButtonRect buttonMostrar5;
    private javax.swing.JTable clientes;
    private javax.swing.JTable clientes1;
    private elaprendiz.gui.textField.TextField codigo1;
    private elaprendiz.gui.textField.TextField correo;
    private elaprendiz.gui.textField.TextField correo1;
    private com.toedter.calendar.JDateChooser dcFecha1;
    private elaprendiz.gui.textField.TextField direccion;
    private elaprendiz.gui.textField.TextField direccion1;
    private javax.swing.JInternalFrame jInternalFrame1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JPanel jPanel6;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private elaprendiz.gui.textField.TextField nit1;
    private elaprendiz.gui.textField.TextField nombre;
    private elaprendiz.gui.textField.TextField nombre1;
    private elaprendiz.gui.panel.PanelImage panelImage1;
    private elaprendiz.gui.panel.PanelImage panelImage2;
    private javax.swing.JPanel pnlActionButtons;
    private javax.swing.JPanel pnlActionButtons1;
    private javax.swing.JPanel pnlPaginador;
    private javax.swing.JPanel pnlPaginador1;
    private javax.swing.JRadioButton rbEstado1;
    private javax.swing.JRadioButton rbNit1;
    private javax.swing.JRadioButton rbNombre1;
    private elaprendiz.gui.textField.TextField telefono;
    private elaprendiz.gui.textField.TextField telefono1;
    private elaprendiz.gui.textField.TextField txtDato;
    private elaprendiz.gui.textField.TextField txtDato1;
    // End of variables declaration//GEN-END:variables
}
