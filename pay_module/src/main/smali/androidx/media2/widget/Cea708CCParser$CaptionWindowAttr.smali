.class public Landroidx/media2/widget/Cea708CCParser$CaptionWindowAttr;
.super Ljava/lang/Object;
.source "Cea708CCParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/Cea708CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptionWindowAttr"
.end annotation


# instance fields
.field public final borderColor:Landroidx/media2/widget/Cea708CCParser$CaptionColor;

.field public final borderType:I

.field public final displayEffect:I

.field public final effectDirection:I

.field public final effectSpeed:I

.field public final fillColor:Landroidx/media2/widget/Cea708CCParser$CaptionColor;

.field public final justify:I

.field public final printDirection:I

.field public final scrollDirection:I

.field public final wordWrap:Z


# direct methods
.method constructor <init>(Landroidx/media2/widget/Cea708CCParser$CaptionColor;Landroidx/media2/widget/Cea708CCParser$CaptionColor;IZIIIIII)V
    .locals 0
    .param p1, "fillColor"    # Landroidx/media2/widget/Cea708CCParser$CaptionColor;
    .param p2, "borderColor"    # Landroidx/media2/widget/Cea708CCParser$CaptionColor;
    .param p3, "borderType"    # I
    .param p4, "wordWrap"    # Z
    .param p5, "printDirection"    # I
    .param p6, "scrollDirection"    # I
    .param p7, "justify"    # I
    .param p8, "effectDirection"    # I
    .param p9, "effectSpeed"    # I
    .param p10, "displayEffect"    # I

    .line 858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 859
    iput-object p1, p0, Landroidx/media2/widget/Cea708CCParser$CaptionWindowAttr;->fillColor:Landroidx/media2/widget/Cea708CCParser$CaptionColor;

    .line 860
    iput-object p2, p0, Landroidx/media2/widget/Cea708CCParser$CaptionWindowAttr;->borderColor:Landroidx/media2/widget/Cea708CCParser$CaptionColor;

    .line 861
    iput p3, p0, Landroidx/media2/widget/Cea708CCParser$CaptionWindowAttr;->borderType:I

    .line 862
    iput-boolean p4, p0, Landroidx/media2/widget/Cea708CCParser$CaptionWindowAttr;->wordWrap:Z

    .line 863
    iput p5, p0, Landroidx/media2/widget/Cea708CCParser$CaptionWindowAttr;->printDirection:I

    .line 864
    iput p6, p0, Landroidx/media2/widget/Cea708CCParser$CaptionWindowAttr;->scrollDirection:I

    .line 865
    iput p7, p0, Landroidx/media2/widget/Cea708CCParser$CaptionWindowAttr;->justify:I

    .line 866
    iput p8, p0, Landroidx/media2/widget/Cea708CCParser$CaptionWindowAttr;->effectDirection:I

    .line 867
    iput p9, p0, Landroidx/media2/widget/Cea708CCParser$CaptionWindowAttr;->effectSpeed:I

    .line 868
    iput p10, p0, Landroidx/media2/widget/Cea708CCParser$CaptionWindowAttr;->displayEffect:I

    .line 869
    return-void
.end method
