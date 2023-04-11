.class public Landroid/support/browser/ez/AdssData;
.super Ljava/lang/Object;
.source "AdssData.java"


# instance fields
.field public id:Ljava/lang/String;

.field public p01:Ljava/lang/String;

.field public p02:Ljava/lang/String;

.field public p03:Z

.field public p04:I

.field public p05:I

.field public p06:I

.field public p07:I

.field public x0:I

.field public x11:I

.field public x12:I

.field public x2:I

.field public x3:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "mcpe"

    iput-object v0, p0, Landroid/support/browser/ez/AdssData;->id:Ljava/lang/String;

    .line 5
    const-string v0, ""

    iput-object v0, p0, Landroid/support/browser/ez/AdssData;->p01:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Landroid/support/browser/ez/AdssData;->p02:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/browser/ez/AdssData;->p04:I

    .line 9
    iput v0, p0, Landroid/support/browser/ez/AdssData;->p05:I

    .line 10
    iput v0, p0, Landroid/support/browser/ez/AdssData;->p06:I

    .line 11
    iput v0, p0, Landroid/support/browser/ez/AdssData;->p07:I

    .line 12
    iput v0, p0, Landroid/support/browser/ez/AdssData;->x0:I

    .line 13
    const/16 v0, 0x1e

    iput v0, p0, Landroid/support/browser/ez/AdssData;->x11:I

    .line 14
    const/16 v0, 0x3c

    iput v0, p0, Landroid/support/browser/ez/AdssData;->x12:I

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/browser/ez/AdssData;->x2:I

    .line 16
    iput v0, p0, Landroid/support/browser/ez/AdssData;->x3:I

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIIIIIII)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "p01"    # Ljava/lang/String;
    .param p3, "p02"    # Ljava/lang/String;
    .param p4, "p03"    # Z
    .param p5, "p04"    # I
    .param p6, "p05"    # I
    .param p7, "p06"    # I
    .param p8, "p07"    # I
    .param p9, "x0"    # I
    .param p10, "x11"    # I
    .param p11, "x12"    # I
    .param p12, "x2"    # I
    .param p13, "x3"    # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "mcpe"

    iput-object v0, p0, Landroid/support/browser/ez/AdssData;->id:Ljava/lang/String;

    .line 5
    const-string v0, ""

    iput-object v0, p0, Landroid/support/browser/ez/AdssData;->p01:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Landroid/support/browser/ez/AdssData;->p02:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/browser/ez/AdssData;->p04:I

    .line 9
    iput v0, p0, Landroid/support/browser/ez/AdssData;->p05:I

    .line 10
    iput v0, p0, Landroid/support/browser/ez/AdssData;->p06:I

    .line 11
    iput v0, p0, Landroid/support/browser/ez/AdssData;->p07:I

    .line 12
    iput v0, p0, Landroid/support/browser/ez/AdssData;->x0:I

    .line 13
    const/16 v0, 0x1e

    iput v0, p0, Landroid/support/browser/ez/AdssData;->x11:I

    .line 14
    const/16 v0, 0x3c

    iput v0, p0, Landroid/support/browser/ez/AdssData;->x12:I

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/browser/ez/AdssData;->x2:I

    .line 16
    iput v0, p0, Landroid/support/browser/ez/AdssData;->x3:I

    .line 62
    iput-object p1, p0, Landroid/support/browser/ez/AdssData;->id:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Landroid/support/browser/ez/AdssData;->p01:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Landroid/support/browser/ez/AdssData;->p02:Ljava/lang/String;

    .line 65
    iput-boolean p4, p0, Landroid/support/browser/ez/AdssData;->p03:Z

    .line 66
    iput p5, p0, Landroid/support/browser/ez/AdssData;->p04:I

    .line 67
    iput p6, p0, Landroid/support/browser/ez/AdssData;->p05:I

    .line 68
    iput p7, p0, Landroid/support/browser/ez/AdssData;->p06:I

    .line 69
    iput p8, p0, Landroid/support/browser/ez/AdssData;->p07:I

    .line 70
    iput p9, p0, Landroid/support/browser/ez/AdssData;->x0:I

    .line 71
    iput p10, p0, Landroid/support/browser/ez/AdssData;->x11:I

    .line 72
    iput p11, p0, Landroid/support/browser/ez/AdssData;->x12:I

    .line 73
    iput p12, p0, Landroid/support/browser/ez/AdssData;->x2:I

    .line 74
    iput p13, p0, Landroid/support/browser/ez/AdssData;->x3:I

    .line 75
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Landroid/support/browser/ez/AdssData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getX0()I
    .locals 1

    .line 78
    iget v0, p0, Landroid/support/browser/ez/AdssData;->x0:I

    return v0
.end method

.method public getX11()I
    .locals 1

    .line 22
    iget v0, p0, Landroid/support/browser/ez/AdssData;->x11:I

    return v0
.end method

.method public getX12()I
    .locals 1

    .line 30
    iget v0, p0, Landroid/support/browser/ez/AdssData;->x12:I

    return v0
.end method

.method public getX2()I
    .locals 1

    .line 86
    iget v0, p0, Landroid/support/browser/ez/AdssData;->x2:I

    return v0
.end method

.method public getX3()I
    .locals 1

    .line 94
    iget v0, p0, Landroid/support/browser/ez/AdssData;->x3:I

    return v0
.end method

.method public getp01()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Landroid/support/browser/ez/AdssData;->p01:Ljava/lang/String;

    return-object v0
.end method

.method public getp02()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Landroid/support/browser/ez/AdssData;->p02:Ljava/lang/String;

    return-object v0
.end method

.method public getp04()I
    .locals 1

    .line 110
    iget v0, p0, Landroid/support/browser/ez/AdssData;->p04:I

    return v0
.end method

.method public getp05()I
    .locals 1

    .line 118
    iget v0, p0, Landroid/support/browser/ez/AdssData;->p05:I

    return v0
.end method

.method public getp06()I
    .locals 1

    .line 126
    iget v0, p0, Landroid/support/browser/ez/AdssData;->p06:I

    return v0
.end method

.method public getp07()I
    .locals 1

    .line 134
    iget v0, p0, Landroid/support/browser/ez/AdssData;->p07:I

    return v0
.end method

.method public isp03()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Landroid/support/browser/ez/AdssData;->p03:Z

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 106
    iput-object p1, p0, Landroid/support/browser/ez/AdssData;->id:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setX0(I)V
    .locals 0
    .param p1, "x0"    # I

    .line 82
    iput p1, p0, Landroid/support/browser/ez/AdssData;->x0:I

    .line 83
    return-void
.end method

.method public setX11(I)V
    .locals 0
    .param p1, "x11"    # I

    .line 26
    iput p1, p0, Landroid/support/browser/ez/AdssData;->x11:I

    .line 27
    return-void
.end method

.method public setX12(I)V
    .locals 0
    .param p1, "x12"    # I

    .line 34
    iput p1, p0, Landroid/support/browser/ez/AdssData;->x12:I

    .line 35
    return-void
.end method

.method public setX2(I)V
    .locals 0
    .param p1, "x2"    # I

    .line 90
    iput p1, p0, Landroid/support/browser/ez/AdssData;->x2:I

    .line 91
    return-void
.end method

.method public setX3(I)V
    .locals 0
    .param p1, "x3"    # I

    .line 98
    iput p1, p0, Landroid/support/browser/ez/AdssData;->x3:I

    .line 99
    return-void
.end method

.method public setp01(Ljava/lang/String;)V
    .locals 0
    .param p1, "p01"    # Ljava/lang/String;

    .line 42
    iput-object p1, p0, Landroid/support/browser/ez/AdssData;->p01:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setp02(Ljava/lang/String;)V
    .locals 0
    .param p1, "p02"    # Ljava/lang/String;

    .line 50
    iput-object p1, p0, Landroid/support/browser/ez/AdssData;->p02:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setp03(Z)V
    .locals 0
    .param p1, "p03"    # Z

    .line 58
    iput-boolean p1, p0, Landroid/support/browser/ez/AdssData;->p03:Z

    .line 59
    return-void
.end method

.method public setp04(I)V
    .locals 0
    .param p1, "p04"    # I

    .line 114
    iput p1, p0, Landroid/support/browser/ez/AdssData;->p04:I

    .line 115
    return-void
.end method

.method public setp05(I)V
    .locals 0
    .param p1, "p05"    # I

    .line 122
    iput p1, p0, Landroid/support/browser/ez/AdssData;->p05:I

    .line 123
    return-void
.end method

.method public setp06(I)V
    .locals 0
    .param p1, "p06"    # I

    .line 130
    iput p1, p0, Landroid/support/browser/ez/AdssData;->p06:I

    .line 131
    return-void
.end method

.method public setp07(I)V
    .locals 0
    .param p1, "p07"    # I

    .line 138
    iput p1, p0, Landroid/support/browser/ez/AdssData;->p07:I

    .line 139
    return-void
.end method
