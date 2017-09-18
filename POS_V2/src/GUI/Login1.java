/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package GUI;

import BD.BdConexion;
import BackupMySQL.BackupDiario;
import Modelos.AccesoUsuario;
import Modelos.CreditosVencidos;
import Modelos.FormatoFecha;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import javax.swing.JOptionPane;

/**
 *
 * @author 30234
 */
public class Login1 extends javax.swing.JFrame {

    private boolean accesoConcedido = false;
    private JOptionPane op;
    java.sql.Connection conn;//getConnection intentara establecer una conexión.
    java.sql.Statement sent;

    /**
     * Creates new form Login
     */
    public Login1() {
        initComponents();
    }

    private void login() {
        Calendar c = Calendar.getInstance();
        Calendar c2 = Calendar.getInstance();
        c2.set(2017, Calendar.OCTOBER, 31);

        String cc = FormatoFecha.getFormato(c2.getTime(), FormatoFecha.A_M_D);

        String fechaactual = "";
        String fechapc = FormatoFecha.getFormato(c.getTime(), FormatoFecha.A_M_D);

        if (fechainicio.getCalendar() != null) {
            fechaactual = FormatoFecha.getFormato(fechainicio.getCalendar().getTime(), FormatoFecha.A_M_D);
        } else {
            JOptionPane.showMessageDialog(this, "Seleccione la fecha Actual", "Error: Datos vacios.", JOptionPane.ERROR_MESSAGE);
            return;
        }
        if ( c.get(Calendar.YEAR) <= c2.get(Calendar.YEAR)) {
            if (fechaactual.equals(fechapc)) {
                if (!this.usuario.getText().isEmpty() && !this.password.getText().isEmpty()) {

                    String msg = "";
                    AccesoUsuario.Estado configUsuario = AccesoUsuario.configUsuario(usuario.getText(), password.getText());

                    if (configUsuario == AccesoUsuario.Estado.NO_EXISTE) {
                        msg = "El usuario:  " + this.usuario.getText() + "  no existe.";
                    } else if (configUsuario == AccesoUsuario.Estado.USR_INACTICVO) {
                        msg = "El usuario: " + this.usuario.getText() + " no esta Activo.\n"
                                + "Comuniquese con el Administrador del Sistema";
                    } else if (configUsuario == AccesoUsuario.Estado.ERROR_CLAVE) {
                        msg = "¡Contraseña Incorrecta!";
                    } else if (configUsuario == AccesoUsuario.Estado.ACCESO_OK) {

                        MenuPrincipal j = new MenuPrincipal();
                        j.setVisible(true);
                        this.dispose();
                        //CalcularMoras.moras();//Si el usuario tiene acceso calcula moras si las hay
                        BackupDiario.GenerarBackupDiarioMySQL();
                        accesoConcedido = true;
                        //actualizarfecha();   Al desacticar esto no calculara intereses
                        return;
                    }
                    JOptionPane.showMessageDialog(this, msg, "Error: no se pudo conectar.", JOptionPane.ERROR_MESSAGE);
                } else {
                    JOptionPane.showMessageDialog(this, "Ingrese un nombre de usuario y su contraseña", "Error: Datos vacios.", JOptionPane.ERROR_MESSAGE);
                }
            } else {
                JOptionPane.showMessageDialog(this, "Verifique la fecha de la PC no Conicide con la fecha Actual");
                return;
            }
        } else {
            JOptionPane.showMessageDialog(this, "El POS DEMO caducó, podrás utilizar el sistema hasta que compres tu licencia"
                    + "\nporfavor contacta al Administrador ");

        }
    }

    public void actualizarfecha() {
        try {
            Calendar dcFech = Calendar.getInstance();
            String fecha;
            int años = dcFech.get(Calendar.YEAR);
            int dias = dcFech.get(Calendar.DAY_OF_MONTH);
            int mess = dcFech.get(Calendar.MONTH) + 1;
            fecha = "" + años + "-" + mess + "-" + dias;

            if (existefecaha(fecha) == false) {
                conn = BdConexion.getConexion();
                String abono = "update fechaint set  fecha=? where id=?";
                PreparedStatement ps2 = conn.prepareStatement(abono);
                ps2.setString(1, fecha);
                ps2.setInt(2, 1);
                int n2 = ps2.executeUpdate();

                if (n2 > 0) {
                    CreditosVencidos c = new CreditosVencidos();
                    c.vencidos();
                }
                JOptionPane.showMessageDialog(null, "Se Calcularon Intereses");
                //System.out.print("Se Calcularon Intereses");
            } else {
                //System.out.print("No se calcularon Intereses");
            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Error :" + ex);
            //Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private boolean existefecaha(String Dato) {
        try {
            //int fila = tablacomprasporpagar.getSelectedRow();
            //String Dato = (String) tablacomprasporpagar.getValueAt(fila, 1).toString();
            conn = BdConexion.getConexion();
            String sql = "select fecha from fechaint where fechaint.fecha='" + Dato + "'";
            sent = conn.createStatement();// crea objeto Statement para consultar la base de datos
            ResultSet rs = sent.executeQuery(sql);// especifica la consulta y la ejecuta

            if (rs.next()) {//verifica si esta vacio, pero desplaza el puntero al siguiente elemento
                rs.beforeFirst();//regresa el puntero al primer registro
                //conn.close();
                return true;
            } else {
                //conn.close();
                return false;
            }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Ocurrio un error al cargar los datos" + e);
            //System.out.print(e.getMessage());
        }
        return false;
    }

    public boolean isAccesoConcedido() {
        return accesoConcedido;
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        panelImage1 = new elaprendiz.gui.panel.PanelImage();
        panelCurves1 = new elaprendiz.gui.panel.PanelCurves();
        panelImage2 = new elaprendiz.gui.panel.PanelImage();
        usuario = new javax.swing.JTextField();
        password = new javax.swing.JPasswordField();
        jLabel1 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        iniciar = new elaprendiz.gui.button.ButtonAction();
        fechainicio = new com.toedter.calendar.JDateChooser();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        pnlPaginador2 = new javax.swing.JPanel();
        jLabel10 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Acceso al Sistema");
        setName("login"); // NOI18N
        setType(java.awt.Window.Type.UTILITY);

        panelImage1.setBackground(new java.awt.Color(153, 153, 153));
        panelImage1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/fondo/índice1.jpg"))); // NOI18N
        panelImage1.setLayout(null);

        panelCurves1.setBackground(new java.awt.Color(204, 204, 204));
        panelCurves1.setToolTipText("");
        panelCurves1.setFont(new java.awt.Font("Arial", 1, 35)); // NOI18N
        panelCurves1.setLayout(null);

        panelImage2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/recursos/foil-154927_640.png"))); // NOI18N
        panelImage2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        usuario.setFont(new java.awt.Font("Tahoma", 1, 15)); // NOI18N
        panelImage2.add(usuario, new org.netbeans.lib.awtextra.AbsoluteConstraints(31, 31, 128, 32));

        password.setFont(new java.awt.Font("Tahoma", 1, 15)); // NOI18N
        password.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                passwordActionPerformed(evt);
            }
        });
        panelImage2.add(password, new org.netbeans.lib.awtextra.AbsoluteConstraints(31, 86, 241, 32));

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel1.setForeground(java.awt.SystemColor.textHighlight);
        jLabel1.setText("Usuario:");
        panelImage2.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(31, 11, 56, -1));

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel3.setForeground(java.awt.SystemColor.textHighlight);
        jLabel3.setText("Contraseña:");
        panelImage2.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(31, 65, 80, -1));

        iniciar.setText("Acceder al Sistema");
        iniciar.setFont(new java.awt.Font("Arial", 1, 16)); // NOI18N
        iniciar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                iniciarActionPerformed(evt);
            }
        });
        panelImage2.add(iniciar, new org.netbeans.lib.awtextra.AbsoluteConstraints(32, 129, 240, -1));

        fechainicio.setDateFormatString("dd-MM-yyyy");
        fechainicio.setFocusable(false);
        fechainicio.setFont(new java.awt.Font("Arial", 0, 14)); // NOI18N
        fechainicio.setMaxSelectableDate(new java.util.Date(3093496470100000L));
        fechainicio.setMinSelectableDate(new java.util.Date(-62135744300000L));
        fechainicio.setPreferredSize(new java.awt.Dimension(120, 22));
        panelImage2.add(fechainicio, new org.netbeans.lib.awtextra.AbsoluteConstraints(165, 31, 107, 32));

        jLabel4.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel4.setForeground(java.awt.SystemColor.textHighlight);
        jLabel4.setText("Fecha Actual:");
        panelImage2.add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(165, 11, 107, -1));

        panelCurves1.add(panelImage2);
        panelImage2.setBounds(10, 140, 290, 260);

        jLabel5.setFont(new java.awt.Font("Decker", 1, 30)); // NOI18N
        jLabel5.setForeground(java.awt.SystemColor.textHighlight);
        jLabel5.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel5.setText("PUNTO DE");
        panelCurves1.add(jLabel5);
        jLabel5.setBounds(0, 380, 320, 40);

        jLabel7.setFont(new java.awt.Font("Decker", 1, 30)); // NOI18N
        jLabel7.setForeground(java.awt.SystemColor.textHighlight);
        jLabel7.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel7.setText("VENTA");
        panelCurves1.add(jLabel7);
        jLabel7.setBounds(0, 410, 320, 30);

        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/fondo/User_128.png"))); // NOI18N
        panelCurves1.add(jLabel2);
        jLabel2.setBounds(90, 5, 130, 130);

        panelImage1.add(panelCurves1);
        panelCurves1.setBounds(0, 40, 320, 440);

        pnlPaginador2.setBackground(new java.awt.Color(102, 102, 102));
        pnlPaginador2.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(255, 255, 255)));
        pnlPaginador2.setToolTipText("");
        pnlPaginador2.setFont(new java.awt.Font("Arial", 1, 24)); // NOI18N
        pnlPaginador2.setPreferredSize(new java.awt.Dimension(786, 40));
        pnlPaginador2.setLayout(new java.awt.GridBagLayout());

        jLabel10.setFont(new java.awt.Font("Script MT Bold", 1, 32)); // NOI18N
        jLabel10.setForeground(new java.awt.Color(255, 255, 255));
        pnlPaginador2.add(jLabel10, new java.awt.GridBagConstraints());

        jLabel6.setFont(new java.awt.Font("Decker", 1, 25)); // NOI18N
        jLabel6.setForeground(new java.awt.Color(255, 255, 255));
        jLabel6.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel6.setText("Acceso al sistema");
        pnlPaginador2.add(jLabel6, new java.awt.GridBagConstraints());

        panelImage1.add(pnlPaginador2);
        pnlPaginador2.setBounds(0, 0, 321, 40);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(panelImage1, javax.swing.GroupLayout.DEFAULT_SIZE, 323, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(panelImage1, javax.swing.GroupLayout.DEFAULT_SIZE, 481, Short.MAX_VALUE)
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void iniciarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_iniciarActionPerformed
        // TODO add your handling code here:
        login();
    }//GEN-LAST:event_iniciarActionPerformed

    private void passwordActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_passwordActionPerformed
        // TODO add your handling code here:
        login();
    }//GEN-LAST:event_passwordActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
//        try {
//            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
//                if ("Nimbus".equals(info.getName())) {
//                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
//                    break;
//                }
//            }
//        } catch (ClassNotFoundException ex) {
//            java.util.logging.Logger.getLogger(Login1.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
//        } catch (InstantiationException ex) {
//            java.util.logging.Logger.getLogger(Login1.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
//        } catch (IllegalAccessException ex) {
//            java.util.logging.Logger.getLogger(Login1.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
//        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
//            java.util.logging.Logger.getLogger(Login1.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
//        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                /* asi debe ser linea de sintaxis para poder llamar la clase otra*/
                //new Thread(new start()).start();
                //new Thread(new Login1()).start();
                Login1 usuario = new Login1();
                usuario.setVisible(true);
            }
        });
//        java.awt.EventQueue.invokeLater(new Runnable() {
//            public void run() {
//                new Login().setVisible(true);
//            }
//        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.toedter.calendar.JDateChooser fechainicio;
    private elaprendiz.gui.button.ButtonAction iniciar;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private elaprendiz.gui.panel.PanelCurves panelCurves1;
    private elaprendiz.gui.panel.PanelImage panelImage1;
    private elaprendiz.gui.panel.PanelImage panelImage2;
    private javax.swing.JPasswordField password;
    private javax.swing.JPanel pnlPaginador2;
    private javax.swing.JTextField usuario;
    // End of variables declaration//GEN-END:variables
}
