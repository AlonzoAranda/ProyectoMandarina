using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml;

namespace TicTacToe
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        private void Form1_Load(object sender, EventArgs e)
        {
            lblTurno.Text = "X";
            btnRestart.Visible = false;
            TableroPictures[0, 0] = p00;
            TableroPictures[0, 1] = p01;
            TableroPictures[0, 2] = p02;
            TableroPictures[1, 0] = p10;
            TableroPictures[1, 1] = p11;
            TableroPictures[1, 2] = p12;
            TableroPictures[2, 0] = p20;
            TableroPictures[2, 1] = p21;
            TableroPictures[2, 2] = p22;
        }
        ArbolBusqueda Arbol = new ArbolBusqueda();
        PictureBox[,] TableroPictures = new PictureBox[3, 3];
        string JuegoGenerado;
        string Game = "";
        private void PlayIA1()
        {
            if(Game != "")
            {
                if (Arbol.PlayIA(JuegoGenerado) == null)
                {
                    if (PlayIA4() == false)
                    {
                        if (PlayIA3() == false)
                        {
                            if (CheckEmpty(Tablero) == false)
                            {
                                int max = -10;
                                int temp = 0;
                                int x = 0, y = 0;
                                for (int i = 0; i < 3; i++)
                                {
                                    for (int j = 0; j < 3; j++)
                                    {
                                        if (Tablero[i, j] == "")
                                        {
                                            Tablero[i, j] = "O";
                                            temp = PlayIA2();
                                            if (max < temp)
                                            {
                                                max = temp;
                                                x = i;
                                                y = j;
                                            }
                                            Tablero[i, j] = "";
                                        }
                                    }
                                }
                                if (Tablero[x, y] == "")
                                {
                                    LlenarPicture(TableroPictures[x, y], lblTurno.Text);
                                }
                                else
                                {
                                    for (int i = 0; i < 3; i++)
                                    {
                                        for (int j = 0; j < 3; j++)
                                        {
                                            if (Tablero[i, j] == "")
                                            {
                                                LlenarPicture(TableroPictures[x, y], lblTurno.Text);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    JuegoGenerado = GenerarJuego();
                    if (Arbol.BuscarJuego(JuegoGenerado) == false)
                    {
                        Arbol.AddChild(JuegoGenerado);
                    }
                }
                else
                {
                    Tablero = Arbol.PlayIA(JuegoGenerado);
                    LlenarPictureWithStringArray(Tablero);
                    JuegoGenerado = GenerarJuego();
                }
            }
        }
        private int PlayIA2()
        {
            string[] WinnerC = new string[3];
            string[] WinnerR = new string[3];
            string[] WinnerD = new string[3];
            string[] WinnerI = new string[3];
            int CounterX = 0;
            int CounterO = 0;
            int Counter = 0;
            for (int i = 0; i < 3; i++)
            {
                for (int j = 0; j < 3; j++)
                {
                    WinnerR[j] = Tablero[i, j];
                    WinnerC[j] = Tablero[j, i];
                    if (i == j)
                    {
                        WinnerD[j] = Tablero[i, j];
                    }
                    if (i + j == 2)
                    {
                        WinnerI[j] = Tablero[i, j];
                    }
                }
                if ((WinnerR[0] == "O" || WinnerR[0] == "") && (WinnerR[1] == "O" || WinnerR[1] == "") && (WinnerR[2] == "O" || WinnerR[2] == ""))
                {
                    CounterO++;
                }
                if((WinnerR[0] == "X" || WinnerR[0] == "") && (WinnerR[1] == "X" || WinnerR[1] == "") && (WinnerR[2] == "X" || WinnerR[2] == ""))
                {
                    CounterX++;
                }
                if ((WinnerC[0] == "O" || WinnerC[0] == "") && (WinnerC[1] == "O" || WinnerC[1] == "") && (WinnerC[2] == "O" || WinnerC[2] == ""))
                {
                    CounterO++;
                }
                if ((WinnerC[0] == "X" || WinnerC[0] == "") && (WinnerC[1] == "X" || WinnerR[1] == "") && (WinnerC[2] == "X" || WinnerC[2] == ""))
                {
                    CounterX++;
                }
                if ((WinnerD[0] == "O" || WinnerC[0] == "") && (WinnerD[1] == "O" || WinnerD[1] == "") && (WinnerD[2] == "O" || WinnerD[2] == ""))
                {
                    CounterO++;
                }
                if ((WinnerD[0] == "X" || WinnerC[0] == "") && (WinnerD[1] == "X" || WinnerD[1] == "") && (WinnerD[2] == "X" || WinnerD[2] == ""))
                {
                    CounterX++;
                }
                if ((WinnerI[0] == "O" || WinnerI[0] == "") && (WinnerI[1] == "O" || WinnerI[1] == "") && (WinnerI[2] == "O" || WinnerI[2] == ""))
                {
                    CounterO++;
                }
                if ((WinnerI[0] == "X" || WinnerI[0] == "") && (WinnerI[1] == "X" || WinnerI[1] == "") && (WinnerI[2] == "X" || WinnerI[2] == ""))
                {
                    CounterX++;
                }
            }
            Counter = CounterO - CounterX;
            return Counter;
        }
        private bool PlayIA3()
        {
            string[] WinnerC = new string[3] { " "," "," "};
            string[] WinnerR = new string[3] { "", "", "" };
            string[] WinnerD = new string[3] { "", "", "" };
            string[] WinnerI = new string[3] { "", "", "" };
            int x = 0;
            int col = -1;
            //Check Column            //Check Row            //Check Diagonal
            for (int i = 0; i < 3; i++)
            {
                for (int j = 0; j < 3; j++)
                {
                    WinnerR[j] = Tablero[i, j];
                    WinnerC[j] = Tablero[j, i];
                    if (i == j)
                    {
                        WinnerD[j] = Tablero[i, j];
                    }
                    if (i + j == 2)
                    {
                        WinnerI[j] = Tablero[i, j];
                    }
                }
                if ((WinnerR[0] == "X" || WinnerR[0] == "") && (WinnerR[1] == "X" || WinnerR[1] == "") && (WinnerR[2] == "X" || WinnerR[2] == ""))
                {
                    for (int c = 0; c < 3; c++)
                    {
                        if(WinnerR[c] == "X")
                        {
                            x++;
                        }
                        if(WinnerR[c] == "")
                        {
                            col = c;
                        }
                    }
                    if (x >= 2 && col > -1)
                    {
                        if(Tablero[i,col] == "")
                        {
                            LlenarPicture(TableroPictures[i, col], lblTurno.Text);
                            break;
                        }
                    }
                    else
                    {
                        x = 0;
                    }
                }
                if ((WinnerC[0] == "X" || WinnerC[0] == "") && (WinnerC[1] == "X" || WinnerC[1] == "") && (WinnerC[2] == "X" || WinnerC[2] == ""))
                {
                    for (int c = 0; c < 3; c++)
                    {
                        if (WinnerC[c] == "X")
                        {
                            x++;
                        }
                        if(WinnerC[c] == "")
                        {
                            col = c;
                        }
                    }
                    if (x >= 2 && col > -1)
                    {
                        if (Tablero[col,i] == "")
                        {
                            LlenarPicture(TableroPictures[col, i], lblTurno.Text);
                            break;
                        }
                        else
                        {
                            x = 0;
                        }
                    }
                    else
                    {
                        x = 0;
                    }
                }
                if ((WinnerD[0] == "X" || WinnerR[0] == "") && (WinnerD[1] == "X" || WinnerD[1] == "") && (WinnerD[2] == "X" || WinnerD[2] == ""))
                {
                    for (int c = 0; c < 3; c++)
                    {
                        if (WinnerD[c] == "X")
                        {
                            x++;
                        }
                        if (WinnerD[c] == "")
                        {
                            col = c;
                        }
                    }
                    if (x >= 2 && col > -1)
                    {
                        if(Tablero[col,col] == "")
                        {
                            LlenarPicture(TableroPictures[col, col], lblTurno.Text);
                            break;
                        }
                        else
                        {
                            x = 0;
                        }
                    }
                    else
                    {
                        x = 0;
                    }
                }
                if ((WinnerI[0] == "X" || WinnerI[0] == "") && (WinnerI[1] == "X" || WinnerI[1] == "") && (WinnerI[2] == "X" || WinnerI[2] == ""))
                {
                    for (int c = 0; c < 3; c++)
                    {
                        if (WinnerI[c] == "X")
                        {
                            x++;
                        }
                        if (WinnerI[c] == "")
                        {
                            col = c;
                        }
                    }
                    if (x >= 2 && col > -1)
                    {
                        int fil = 2 - col;
                        if (Tablero[fil,col] == "")
                        {
                            LlenarPicture(TableroPictures[fil, col], lblTurno.Text);
                            break;
                        }
                        else
                        {
                            x = 0;
                        }
                    }
                    else
                    {
                        x = 0;
                    }
                }
            }
            if (x >= 2 && col > -1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        private bool PlayIA4()
        {
            string[] WinnerC = new string[3] { "", "", "" };
            string[] WinnerR = new string[3] { "", "", "" };
            string[] WinnerD = new string[3] { "", "", "" };
            string[] WinnerI = new string[3] { "", "", "" };
            int x = 0;
            int col = 0;
            //Check Column            //Check Row            //Check Diagonal
            for (int i = 0; i < 3; i++)
            {
                for (int j = 0; j < 3; j++)
                {
                    WinnerR[j] = Tablero[i, j];
                    WinnerC[j] = Tablero[j, i];
                    if (i == j)
                    {
                        WinnerD[j] = Tablero[i, j];
                    }
                    if (i + j == 2)
                    {
                        WinnerI[j] = Tablero[i, j];
                    }
                }
                if ((WinnerR[0] == "O" || WinnerR[0] == "") && (WinnerR[1] == "O" || WinnerR[1] == "") && (WinnerR[2] == "O" || WinnerR[2] == ""))
                {
                    for (int c = 0; c < 3; c++)
                    {
                        if (WinnerR[c] == "O")
                        {
                            x++;
                        }
                        if (WinnerR[c] == "")
                        {
                            col = c;
                        }
                    }
                    if (x >= 2 && Tablero[i, col] == "")
                    {
                        LlenarPicture(TableroPictures[i, col], lblTurno.Text);
                        break;
                    }
                    else
                    {
                        x = 0;
                    }
                }
                if ((WinnerC[0] == "O" || WinnerC[0] == "") && (WinnerC[1] == "O" || WinnerC[1] == "") && (WinnerC[2] == "O" || WinnerC[2] == ""))
                {
                    for (int c = 0; c < 3; c++)
                    {
                        if (WinnerC[c] == "O")
                        {
                            x++;
                        }
                        if (WinnerC[c] == "")
                        {
                            col = c;
                        }
                    }
                    if (x >= 2 && Tablero[col, i] == "")
                    {
                        LlenarPicture(TableroPictures[col, i], lblTurno.Text);
                        break;
                    }
                    else
                    {
                        x = 0;
                    }
                }
                if ((WinnerD[0] == "O" || WinnerR[0] == "") && (WinnerD[1] == "O" || WinnerD[1] == "") && (WinnerD[2] == "O" || WinnerD[2] == ""))
                {
                    for (int c = 0; c < 3; c++)
                    {
                        if (WinnerD[c] == "O")
                        {
                            x++;
                        }
                        if (WinnerD[c] == "")
                        {
                            col = c;
                        }
                    }
                    if (x >= 2 && Tablero[col, col] == "")
                    {
                        LlenarPicture(TableroPictures[col, col], lblTurno.Text);
                        break;
                    }
                    else
                    {
                        x = 0;
                    }
                }
                if ((WinnerI[0] == "O" || WinnerI[0] == "") && (WinnerI[1] == "O" || WinnerI[1] == "") && (WinnerI[2] == "O" || WinnerI[2] == ""))
                {
                    for (int c = 0; c < 3; c++)
                    {
                        if (WinnerI[c] == "O")
                        {
                            x++;
                        }
                        if (WinnerI[c] == "")
                        {
                            col = c;
                        }
                    }
                    if (x >= 2 && Tablero[2-col, col] == "")
                    {
                        int fil = 2 - col;
                        LlenarPicture(TableroPictures[fil, col], lblTurno.Text);
                        break;
                    }
                    else
                    {
                        x = 0;
                    }
                }
            }
            if (x >= 2)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        
        private string GenerarJuego()
        {
            Game += "/";
            for (int i = 0; i < 3; i++)
            {
                for (int j = 0; j < 3; j++)
                {
                    if (Tablero[i, j] == "")
                    {
                        Game += "N";
                    }
                    else
                    {
                        Game += Tablero[i, j];
                    }
                }
            }
            if (Game == "/NNNNNNNNN")
                Game = "";
            return Game;
        }
        
        private void pictureBox2_Click(object sender, EventArgs e)
        {
            LlenarPicture(p00, lblTurno.Text);
            JuegoGenerado = GenerarJuego();
            if (Arbol.BuscarJuego(JuegoGenerado) == false)
            {
                Arbol.AddChild(JuegoGenerado);
            }
            PlayIA1();
        }
        private void pictureBox3_Click(object sender, EventArgs e)
        {
            LlenarPicture(p01, lblTurno.Text);
            JuegoGenerado = GenerarJuego();
            if (Arbol.BuscarJuego(JuegoGenerado) == false)
            {
                Arbol.AddChild(JuegoGenerado);
            }
            PlayIA1();
        }
        private void pictureBox4_Click(object sender, EventArgs e)
        {
            LlenarPicture(p02, lblTurno.Text);
            JuegoGenerado = GenerarJuego();
            if (Arbol.BuscarJuego(JuegoGenerado) == false)
            {
                Arbol.AddChild(JuegoGenerado);
            }
            PlayIA1();
        }
        private void pictureBox5_Click(object sender, EventArgs e)
        {
            LlenarPicture(p10, lblTurno.Text);
            JuegoGenerado = GenerarJuego();
            if (Arbol.BuscarJuego(JuegoGenerado) == false)
            {
                Arbol.AddChild(JuegoGenerado);
            }
            PlayIA1();
        }
        private void pictureBox6_Click(object sender, EventArgs e)
        {
            LlenarPicture(p11, lblTurno.Text);
            JuegoGenerado = GenerarJuego();
            if (Arbol.BuscarJuego(JuegoGenerado) == false)
            {
                Arbol.AddChild(JuegoGenerado);
            }
            PlayIA1();
        }
        private void pictureBox7_Click(object sender, EventArgs e)
        {
            LlenarPicture(p12, lblTurno.Text);
            JuegoGenerado = GenerarJuego();
            if (Arbol.BuscarJuego(JuegoGenerado) == false)
            {
                Arbol.AddChild(JuegoGenerado);
            }
            PlayIA1();
        }
        private void pictureBox8_Click(object sender, EventArgs e)
        {
            LlenarPicture(p20, lblTurno.Text);
            JuegoGenerado = GenerarJuego();
            if (Arbol.BuscarJuego(JuegoGenerado) == false)
            {
                Arbol.AddChild(JuegoGenerado);
            }
            PlayIA1();
        }
        private void pictureBox9_Click(object sender, EventArgs e)
        {
            LlenarPicture(p21, lblTurno.Text);
            JuegoGenerado = GenerarJuego();
            if (Arbol.BuscarJuego(JuegoGenerado) == false)
            {
                Arbol.AddChild(JuegoGenerado);
            }
            PlayIA1();
        }
        private void pictureBox10_Click(object sender, EventArgs e)
        {
            LlenarPicture(p22, lblTurno.Text);
            JuegoGenerado = GenerarJuego();
            if (Arbol.BuscarJuego(JuegoGenerado) == false)
            {
                Arbol.AddChild(JuegoGenerado);
            }
            PlayIA1();
        }

        String[,] Tablero = new String[3,3] { { "", "", "" }, { "", "", "" }, { "", "", "" } };
        private void LlenarPicture(PictureBox pbx, string Turno)
        {
            if(Turno == "X")
            {
                pbx.BackgroundImage = Properties.Resources.Tacha_jpg;
                pbx.BackgroundImageLayout = ImageLayout.Stretch;
                lblTurno.Text = "O";
                Tablero[Convert.ToInt32(pbx.Name.Substring(1, 1)), Convert.ToInt32(pbx.Name.Substring(2, 1))] = "X";
                pbx.Enabled = false;
            }
            else
            {
                pbx.BackgroundImage = Properties.Resources.Bola;
                pbx.BackgroundImageLayout = ImageLayout.Stretch;
                lblTurno.Text = "X";
                Tablero[Convert.ToInt32(pbx.Name.Substring(1, 1)), Convert.ToInt32(pbx.Name.Substring(2, 1))] = "O";
                pbx.Enabled = false;
            }
            if(CheckGame(Tablero) == true)
            {
                btnRestart.Visible = true;
            }
            CheckWinner(Tablero);
        }
        private void LlenarPictureWithStringArray(String[,] Game)
        {
            for (int i = 0; i < 3; i++)
            {
                for (int j = 0; j < 3; j++)
                {
                    if (Tablero[i, j] == "O")
                    {
                        TableroPictures[i, j].BackgroundImage = Properties.Resources.Bola;
                        TableroPictures[i, j].BackgroundImageLayout = ImageLayout.Stretch;
                    }
                    else if (Tablero[i, j] == "X")
                    {
                        TableroPictures[i, j].BackgroundImage = Properties.Resources.Tacha_jpg;
                        TableroPictures[i, j].BackgroundImageLayout = ImageLayout.Stretch;
                    }
                }
            }
            lblTurno.Text = "X";
            CheckWinner(Tablero);
        }

        private bool CheckEmpty(String[,] Tablero)
        {
            for (int i = 0; i < 3; i++)
            {
                for (int j = 0; j < 3; j++)
                {
                    if (Tablero[i, j] != "")
                    {
                        return false;
                    }
                }
            }
            return true;
        }
        private bool CheckGame(String[,] Tablero)
        {
            for (int i = 0; i < 3; i++) 
            {
                for(int j = 0; j < 3; j++)
                {
                    if (Tablero[i, j] == "")
                    {
                        return false;
                    }
                }
            }
            return true;
        }
        private void CheckWinner(String[,] Tablero)
        {
            string[] WinnerC = new string[3];
            string[] WinnerR = new string[3];
            string[] WinnerD = new string[3];
            string[] WinnerI = new string[3];
            //Check Column            //Check Row            //Check Diagonal
            for (int i = 0; i < 3; i++)
            {
                for (int j = 0; j < 3; j++)
                {
                    WinnerR[j] = Tablero[i, j];
                    WinnerC[j] = Tablero[j, i];
                    if(i == j)
                    {
                        WinnerD[j] = Tablero[i, j];
                    }
                    if (i + j == 2) 
                    {
                        WinnerI[j] = Tablero[i, j];
                    }
                }
                if (WinnerR[0] == WinnerR[1] && WinnerR[1] == WinnerR[2])
                {
                    if (WinnerR[0] != "")
                    {
                        MessageBox.Show("Gana " + WinnerR[0]);
                        Restart(WinnerR[0]);
                        break;
                    }
                }
                if(WinnerC[0] == WinnerC[1] && WinnerC[1] == WinnerC[2])
                {
                    if(WinnerC[0] != "")
                    {
                        MessageBox.Show("Gana " + WinnerC[0]);
                        Restart(WinnerC[0]);
                        break;
                    }
                }
                if (WinnerD[0] == WinnerD[1] && WinnerD[1] == WinnerD[2])
                {
                    if (WinnerD[0] != "")
                    {
                        MessageBox.Show("Gana " + WinnerD[0]);
                        Restart(WinnerD[0]);
                        break;
                    }
                }
                if (WinnerI[0] == WinnerI[1] && WinnerI[1] == WinnerI[2])
                {
                    if (WinnerI[0] != "")
                    {
                        MessageBox.Show("Gana " + WinnerI[0]);
                        Restart(WinnerI[0]);
                        break;
                    }
                }
            }
        }
        private void btnRestart_Click(object sender, EventArgs e)
        {
            string NonWinner = "";
            Restart(NonWinner);
        }
        private void Restart(string Winner)
        {
            if (Winner == "O")
            {
                Arbol.SaveChanges();
            }
            if (Arbol.BuscarJuego(GenerarJuego()) == false)
            {
                Arbol.AddChild(GenerarJuego());
            }
            p00.Enabled = true;
            p01.Enabled = true;
            p02.Enabled = true;
            p10.Enabled = true;
            p11.Enabled = true;
            p12.Enabled = true;
            p20.Enabled = true;
            p21.Enabled = true;
            p22.Enabled = true;
            p00.BackgroundImage = null;
            p01.BackgroundImage = null;
            p02.BackgroundImage = null;
            p10.BackgroundImage = null;
            p11.BackgroundImage = null;
            p12.BackgroundImage = null;
            p20.BackgroundImage = null;
            p21.BackgroundImage = null;
            p22.BackgroundImage = null;
            lblTurno.Text = "X";
            btnRestart.Visible = false;
            Tablero = new String[3, 3] { { "", "", "" }, { "", "", "" }, { "", "", "" } };
            Game = "";
            Arbol.ReLoad();
        }
    }
}
