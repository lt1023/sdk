.class public Landroidx/media2/widget/Cea708CCParser$CaptionPenColor;
.super Ljava/lang/Object;
.source "Cea708CCParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/Cea708CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptionPenColor"
.end annotation


# instance fields
.field public final backgroundColor:Landroidx/media2/widget/Cea708CCParser$CaptionColor;

.field public final edgeColor:Landroidx/media2/widget/Cea708CCParser$CaptionColor;

.field public final foregroundColor:Landroidx/media2/widget/Cea708CCParser$CaptionColor;


# direct methods
.method constructor <init>(Landroidx/media2/widget/Cea708CCParser$CaptionColor;Landroidx/media2/widget/Cea708CCParser$CaptionColor;Landroidx/media2/widget/Cea708CCParser$CaptionColor;)V
    .locals 0
    .param p1, "foregroundColor"    # Landroidx/media2/widget/Cea708CCParser$CaptionColor;
    .param p2, "backgroundColor"    # Landroidx/media2/widget/Cea708CCParser$CaptionColor;
    .param p3, "edgeColor"    # Landroidx/media2/widget/Cea708CCParser$CaptionColor;

    .line 820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 821
    iput-object p1, p0, Landroidx/media2/widget/Cea708CCParser$CaptionPenColor;->foregroundColor:Landroidx/media2/widget/Cea708CCParser$CaptionColor;

    .line 822
    iput-object p2, p0, Landroidx/media2/widget/Cea708CCParser$CaptionPenColor;->backgroundColor:Landroidx/media2/widget/Cea708CCParser$CaptionColor;

    .line 823
    iput-object p3, p0, Landroidx/media2/widget/Cea708CCParser$CaptionPenColor;->edgeColor:Landroidx/media2/widget/Cea708CCParser$CaptionColor;

    .line 824
    return-void
.end method
