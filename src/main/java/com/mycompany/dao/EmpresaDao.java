package com.mycompany.dao;

import com.mycompany.entities.Empresa;
import com.mycompany.entities.Oficina;
import com.mycompany.utils.HibernateUtil;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Administrador
 */
public class EmpresaDao {

    public void salvar(Empresa empresa) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction t = session.beginTransaction();
        session.save(empresa);
        t.commit();
        session.close();
    }

    public List<Empresa> listar() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction t = session.beginTransaction();
        List lista = session.createQuery("from Empresa").list();
        t.commit();
        return lista;
    }

    public void selecionar() {
    }

    public void remover() {
    }

    public void atualizar() {
    }
}
