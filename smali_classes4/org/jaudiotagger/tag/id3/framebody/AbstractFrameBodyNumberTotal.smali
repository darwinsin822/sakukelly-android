.class public abstract Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;
.super Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
.source "AbstractFrameBodyNumberTotal.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    const/4 v0, 0x0

    .line 53
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "TextEncoding"

    invoke-virtual {p0, v1, v0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    new-instance v0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;-><init>()V

    const-string v1, "Text"

    invoke-virtual {p0, v1, v0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(BLjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 77
    const-string v0, "TextEncoding"

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    new-instance p1, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-direct {p1, p2, p3}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    const-string p2, "Text"

    invoke-virtual {p0, p2, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 70
    const-string v0, "TextEncoding"

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    new-instance p1, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;-><init>(Ljava/lang/String;)V

    const-string p2, "Text"

    invoke-virtual {p0, p2, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/InvalidTagException;
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V

    return-void
.end method


# virtual methods
.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public getNumber()Ljava/lang/Integer;
    .locals 1

    .line 120
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    .line 121
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->getCount()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getNumberAsText()Ljava/lang/String;
    .locals 1

    .line 126
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->getCountAsText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 110
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotal()Ljava/lang/Integer;
    .locals 1

    .line 142
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->getTotal()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getTotalAsText()Ljava/lang/String;
    .locals 1

    .line 147
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->getTotalAsText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserFriendlyValue()Ljava/lang/String;
    .locals 1

    .line 83
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    .line 84
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->getCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setNumber(Ljava/lang/Integer;)V
    .locals 1

    .line 132
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->setCount(Ljava/lang/Integer;)V

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 1

    .line 137
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->setCount(Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 115
    new-instance v0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;-><init>(Ljava/lang/String;)V

    const-string p1, "Text"

    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTotal(Ljava/lang/Integer;)V
    .locals 1

    .line 152
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->setTotal(Ljava/lang/Integer;)V

    return-void
.end method

.method public setTotal(Ljava/lang/String;)V
    .locals 1

    .line 157
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->setTotal(Ljava/lang/String;)V

    return-void
.end method

.method protected setupObjectList()V
    .locals 4

    .line 164
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->objectList:Ljava/util/List;

    new-instance v1, Lorg/jaudiotagger/tag/datatype/NumberHashMap;

    const-string v2, "TextEncoding"

    const/4 v3, 0x1

    invoke-direct {v1, v2, p0, v3}, Lorg/jaudiotagger/tag/datatype/NumberHashMap;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->objectList:Ljava/util/List;

    new-instance v1, Lorg/jaudiotagger/tag/datatype/PartOfSet;

    const-string v2, "Text"

    invoke-direct {v1, v2, p0}, Lorg/jaudiotagger/tag/datatype/PartOfSet;-><init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
