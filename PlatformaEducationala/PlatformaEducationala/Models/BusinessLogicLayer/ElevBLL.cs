﻿using PlatformaEducationala.Exceptions;
using PlatformaEducationala.Models.DataAccessLayer;
using PlatformaEducationala.Models.EntityLayer;
using System.Collections.ObjectModel;
using System.Linq;

namespace PlatformaEducationala.Models.BusinessLogicLayer
{
    public class ElevBLL
    {
        public ObservableCollection<Elev> ListaElevi { get; set; }

        ElevDAL eleviDAL = new ElevDAL();

        public ElevBLL()
        {
            ListaElevi = new ObservableCollection<Elev>();
        }

        public ObservableCollection<Elev> ObtineTotiElevii()
        {
            return eleviDAL.ObtineTotiElevii();
        }

        public void ObtineTotiEleviiDupaClasa(Clasa clasa)
        {
            ListaElevi.Clear();
            var elevi = eleviDAL.ObtineTotiEleviiDupaClasa(clasa);
            foreach (var elev in elevi)
            {
                ListaElevi.Add(elev);
            }
        }

        public ObservableCollection<Elev> ObtineTotiEleviiDupaMaterieDupaProfesor(int profesorId)
        {
            return eleviDAL.ObtineTotiEleviiDupaMaterieDupaProfesor(profesorId);
        }

        public Elev ObtineElevDupaId(int elevId)
        {
            return eleviDAL.ObtineElevDupaId(elevId);
        }

        public void InserareElev(Elev elev)
        {
            if (string.IsNullOrEmpty(elev.Nume))
            {
                throw new AgendaException("Numele elevului trebuie sa fie precizat.");
            }
            if (string.IsNullOrEmpty(elev.Prenume))
            {
                throw new AgendaException("Prenumele elevului trebuie sa fie precizat.");
            }
            if (string.IsNullOrEmpty(elev.Adresa))
            {
                throw new AgendaException("Adresa elevului trebuie sa fie precizat.");
            }
            if (string.IsNullOrEmpty(elev.NumarTelefon))
            {
                throw new AgendaException("Numarul de telefon al elevului trebuie sa fie precizat.");
            }
            if (string.IsNullOrEmpty(elev.Email))
            {
                throw new AgendaException("Email-ul elevului trebuie sa fie precizat.");
            }
            if (string.IsNullOrEmpty(elev.IdClasa.ToString()))
            {
                throw new AgendaException("ID-ul Clasei elevului trebuie sa fie precizat.");
            }
            eleviDAL.InserareElev(elev);
            ListaElevi.Add(elev);
        }

        public void ActualizareElev(Elev elev)
        {
            if (elev == null)
            {
                throw new AgendaException("Trebuie selectat un elev.");
            }
            if (string.IsNullOrEmpty(elev.Nume))
            {
                throw new AgendaException("Numele elevului trebuie sa fie precizat.");
            }
            if (string.IsNullOrEmpty(elev.Prenume))
            {
                throw new AgendaException("Prenumele elevului trebuie sa fie precizat.");
            }
            if (string.IsNullOrEmpty(elev.Adresa))
            {
                throw new AgendaException("Adresa elevului trebuie sa fie precizat.");
            }
            if (string.IsNullOrEmpty(elev.NumarTelefon))
            {
                throw new AgendaException("Numarul de telefon al elevului trebuie sa fie precizat.");
            }
            if (string.IsNullOrEmpty(elev.Email))
            {
                throw new AgendaException("Email-ul elevului trebuie sa fie precizat.");
            }
            if (string.IsNullOrEmpty(elev.IdClasa.ToString()))
            {
                throw new AgendaException("ID-ul Clasei elevului trebuie sa fie precizat.");
            }
            eleviDAL.ActualizareElev(elev);
        }

        public void StergereElev(Elev elev)
        {
            if (elev == null)
            {
                throw new AgendaException("Trebuie selectat un elev.");
            }
            else
            {
                AbsentaDAL absentaDAL = new AbsentaDAL();
                if (absentaDAL.ObtineToateAbsenteleDupaElev(elev).Count() > 0)
                {
                    throw new AgendaException("Trebuie sa stergeti mai intai absentele pentru elevul cu ID-ul " + elev.IdElev);
                }
                MedieDAL medieDAL = new MedieDAL();
                if (medieDAL.ObtineToateMediileDupaElev(elev).Count() > 0)
                {
                    throw new AgendaException("Trebuie sa stergeti mai intai mediile pentru elevul cu ID-ul " + elev.IdElev);
                }
            }
            eleviDAL.StergereElev(elev);
            ListaElevi.Remove(elev);
        }
    }
}
